-- Quest Manager

-- function ImportRequire(module)
--    if Turbine then
--       return import("EsyIQR.ImmersiveQuestReader." .. module)
--    else
--       return require(module)
--    end
-- end

QuestManager = {}
QuestManager.__index = QuestManager

function QuestManager:Constructor(debug)
   local quest_manager = setmetatable({}, QuestManager)

   quest_manager.DEBUG = debug
   quest_manager.quests = QUEST_DATABASE
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
   return string.sub(chatMessage, 12);
end

-- Returns the quest text for a given quest name
function QuestManager:GetQuest(questName)
   local firstCharacter = string.upper(string.sub(questName, 1, 1));
   if string.find("ABCDEFGHIJKLMNOPQRSTUVWXYZ", firstCharacter, 1, true) then
      ImportRequire("QuestDatabases.QuestDatabase_" .. firstCharacter)
   else
      ImportRequire("QuestDatabases.QuestDatabase_OTHER")
   end
   for _, quest in pairs(QuestDatabase.GetDatabaseQuests()) do
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
   if self.DEBUG then LogMessage("IQR.QuestManager> Showing quest " .. quest.name .. " (" .. state .. ")") end;

   if state ~= nil and state == "completed" then
      local objectives = quest.objectives;
      if objectives.objective.dialog then
	 questText = objectives.objective.dialog.text;
      elseif objectives.objective[#objectives.objective].dialog.text then
	 questText = objectives.objective[#objectives.objective].dialog.text;
      elseif objectives.objective[#objectives.objective].dialog[#objectives.objective[#objectives.objective].dialog] then
	 questText = objectives.objective[#objectives.objective].dialog[#objectives.objective[#objectives.objective].dialog].text;
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
