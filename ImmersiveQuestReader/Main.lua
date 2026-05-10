-- TODO
-- __init__.lua avec Utils puis Main

function ImportRequire(module)
   if Turbine then
      return import("EsyIQR.ImmersiveQuestReader." .. module)
   else
      return require(module)
   end
end

ImportRequire("Utils")
ImportRequire("QuestManager")
ImportRequire("QuestWindow")
import "Turbine.UI"

local DEBUG_GLOBAL = true

if DEBUG_GLOBAL then LogMessage("\nIQR> Starting Immersive Quest Reader...") end

-- Initalize components
local quest_manager = QuestManager:Constructor(DEBUG_GLOBAL)
local screen_width, screen_height = Turbine.UI.Display.GetSize();
local quest_window = QuestWindow:Constructor(DEBUG_GLOBAL, 1,  1)
--


local function questChatReceived (message)
   quest_window:Test()
   -- New quest
   if quest_manager:IsNewQuest(message) then
      local questName = quest_manager:GetNameFromChatMessageNewQuest(message)
      local quest = quest_manager:GetQuest(questName)
      if quest ~= nil then
	 quest_manager:AddQuestStateText(quest, "new");
	 quest_window:EnqueueQuest(quest);
      end

      -- Completed quest
   elseif quest_manager:IsCompletedQuest(message) then
      local questName = quest_manager:GetNameFromChatMessageCompletedQuest(message)
      if DEBUG_GLOBAL then LogMessage("IQR> Completed '" .. questName .. "'") end
      local quest = quest_manager:GetQuest(questName)
      if quest ~= nil then
	 quest = quest_manager:AddQuestStateText(quest, "completed");
	 quest_window:EnqueueQuest(quest);
	 if DEBUG_GLOBAL then LogMessage("IQR> Enqueued " .. quest.name) end
      else
	 if DEBUG_GLOBAL then LogMessage("IQR> Quest not found: " .. questName) end
      end
   end
end

-- Callback when a message is received
Turbine.Chat.Received = function (sender, args)
   if (args.ChatType == Turbine.ChatType.Quest) or (args.ChatType == Turbine.ChatType.Standard)
   then
      questChatReceived(args.Message)
   end
end


-- LogMessage("New Quest: The Keeper Garthamendir")
-- LogMessage("New Quest: Zidir-nesad: The Jewel of Adnâkh")
-- LogMessage("Completed:\nCanvas of Defiance")
-- LogMessage("Completed:\nGifts -- A Delicate Bracelet\n")
-- quest_manager:GetQuest("Gifts -- A Delicate Bracelet")
