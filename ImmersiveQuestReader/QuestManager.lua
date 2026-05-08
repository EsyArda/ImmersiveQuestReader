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
   return string.sub(chatMessage, 12);
end

function QuestManager:GetNameFromChatMessageCompletedQuest(chatMessage)
   -- Adapt with user language
   return string.sub(chatMessage, 12, -2);
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

   local questText = self:GetQuestTextFromState(quest, state)
   if questText then
      quest._text = questText;
   end

   return quest;
end

function QuestManager:GetQuestTextFromState(quest, state)
   local questText = "";
   if self.DEBUG then LogMessage("IQR.QuestManager> Showing " .. state .. " quest " .. quest.name .. " (" .. state .. ")") end;

   if state ~= nil and state == "completed" then
      local objective = quest.objectives.objective;
      if objective.dialog then
	 if objective.dialog.text then
	    questText = objective.dialog.text;
	 else
	    questText = objective.dialog[#objective.dialog].text
	 end
      elseif objective[#objective].dialog.text then
	 questText = objective[#objective].dialog.text;
      elseif objective[#objective].dialog[#objective[#objective].dialog] then
	 questText = objective[#objective].dialog[#objective[#objective].dialog].text;
      else
	 questText = "Could not retrieve quest text";
	 if self.DEBUG then LogMessage("IQR.QuestWindow> Can't find quest text") end;
      end

   elseif state ~= nil and state == "new" then
      if quest.bestower.text ~= nil and type(quest.bestower.text) == "string" then
	 questText = quest.bestower.text;
      else
	 questText = quest.bestower[1].text;
      end
   else
      if self.DEBUG then LogMessage("IQR.QuestWindow> Quest state is " .. state) end;
      questText = "Could not retrieve quest text";
   end

   if self.DEBUG then LogMessage("IQR.QuestManager> Quest text: " .. questText) end
   return questText;
end
