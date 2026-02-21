-- import "EsyIQR.ImmersiveQuestReader.QuestWindow"
-- import "EsyIQR.ImmersiveQuestReader.QuestManager"
require "Utils"
require "QuestManager"

local DEBUG_GLOBAL = true

if DEBUG_GLOBAL then console_output("\nIQR> Starting Immersive Quest Reader...") end

-- QuestWindow = QuestWindow()
local quest_manager = QuestManager:Constructor()

local args = { Message = "New Quest: Adso's Delivery" }

-- Callback when a message is received
-- New quest
if quest_manager:IsNewQuest(args.Message) then
   local questName = quest_manager:GetNameFromChatMessageNewQuest(args.Message)
   local quest = quest_manager:GetQuestFromName(questName)
   if quest ~= nil then
      quest_manager:AddQuestStateText(quest, "new");
      -- QuestWindow:EnqueueQuest(quest);
   end

   -- Completed quest
elseif quest_manager:IsCompletedQuest(args.Message) then
   local questName = quest_manager:GetNameFromChatMessageCompletedQuest(args.Message)
   if DEBUG_GLOBAL then console_output("IQR> Completed '" .. questName .. "'") end
   local quest = quest_manager:GetQuestFromName(questName)
   if quest ~= nil then
      quest = quest_manager:AddQuestStateText(quest, "completed");
      -- QuestWindow:EnqueueQuest(quest);
      if DEBUG_GLOBAL then console_output("IQR> Enqueued " .. quest.name) end
   else
      if DEBUG_GLOBAL then console_output("IQR> Quest not found: " .. questName) end
   end
end


-- console_output("New Quest: The Keeper Garthamendir")
-- console_output("Completed:\nCanvas of Defiance")
