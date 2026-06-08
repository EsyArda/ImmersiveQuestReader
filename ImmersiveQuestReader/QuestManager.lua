-- Quest Manager

QuestManager = {}
QuestManager.__index = QuestManager

function QuestManager:Constructor(debug)
   local quest_manager = setmetatable({}, QuestManager)

   quest_manager.DEBUG = debug
   if quest_manager.DEBUG then LogMessage("IQR.QuestManager> Constructor") end
   return quest_manager
end

function QuestManager:IsNewQuest(chatMessage)
   if string.find(chatMessage, "New Quest: ") then
      if self.DEBUG then LogMessage("IQR.QuestManager> New quest found") end
      return true
   else
      return false
   end
end

function QuestManager:IsCompletedQuest(chatMessage)
   if string.find(chatMessage, "Completed:") then
      return true
   else
      return false
   end
end

function QuestManager:GetNameFromChatMessageNewQuest(chatMessage)
   -- Adapt with user language
   return StripWhitespace(string.sub(chatMessage, 12));
end

function QuestManager:GetNameFromChatMessageCompletedQuest(chatMessage)
   -- Adapt with user language
   return StripWhitespace(string.sub(chatMessage, 12));
end

-- Returns the quest text for a given quest name
function QuestManager:GetQuest(questName)
   local firstCharacter = string.upper(string.sub(questName, 1, 1));
   if self.DEBUG then LogMessage("IQR.QuestManager> firstCharacter: '" .. firstCharacter .. "'") end
   if string.find("ABCDEFGHIJKLMNOPQRSTUVWXYZ", firstCharacter, 1, true) then
      ImportRequire("QuestDatabases.QuestDatabase_" .. firstCharacter)
   else
      ImportRequire("QuestDatabases.QuestDatabase_OTHER")
   end
   for _, quest in pairs(QuestDatabases.GetDatabaseQuests()) do
      if quest.name == questName then
	 if self.DEBUG then LogMessage("IQR.QuestManager> Quest found: '" .. quest.name .. "'") end
	 return quest -- Return the quest if the name matches
      end
   end
   return nil -- Return nil if the quest is not found
end

-- Add the quest text and state to the quest as _text and _state
-- @param quest: a quest table
-- @param state: "new" or "completed"
-- @param questText: the quest text
function QuestManager:AddQuestStateText(quest, state)
   if state == "new" or state == "completed" then
      quest._state = state
   else
      quest._state = nil
   end

   quest._text = self:GetQuestTextFromState(quest, state)

   return quest;
end

function QuestManager:GetQuestTextFromState(quest, state)
   local questText = "";
   if self.DEBUG then LogMessage("IQR.QuestManager> Showing " .. state .. " quest " .. quest.name .. " (" .. state .. ")") end;

   if state ~= nil and state == "completed" then
      return quest.endText
   elseif state ~= nil and state == "new" then
      return quest.startText
   else
      if self.DEBUG then LogMessage("IQR.QuestWindow> Quest state is " .. state) end;
      return nil
   end
end
