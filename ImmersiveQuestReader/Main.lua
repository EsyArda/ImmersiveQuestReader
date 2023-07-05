import "Turbine";
import "EsyIQR.ImmersiveQuestReader.QuestWindow"
import "EsyIQR.ImmersiveQuestReader.QuestManager"

DEBUG = false

if DEBUG then Turbine.Shell.WriteLine("\nIQR> Starting Immersive Quest Reader...") end

QuestWindow = QuestWindow()
QuestManager = QuestManager()


-- Callback when a message is received
Turbine.Chat.Received = function (sender, args)
    if args.ChatType == Turbine.ChatType.Quest then
        if QuestManager:IsNewQuest(args.Message) then
            local questName = QuestManager:GetNameFromChatMessageNewQuest(args.Message)
            local quest = QuestManager:GetQuestTextFromName(questName)
            if quest ~= nil then
                QuestWindow:EnqueueQuest(quest, "new")
            end
        elseif QuestManager:IsCompletedQuest(args.Message) then
            if DEBUG then Turbine.Shell.WriteLine("IQR> Completed " .. QuestManager:GetNameFromChatMessageCompletedQuest(args.Message)) end
        end
    end
end



-- local quest  = QuestManager:GetQuestTextFromName("Fate of the Black Rider")
-- if quest ~= nil then
--     QuestWindow:EnqueueQuest(quest, "new")
-- else
--     Turbine.Shell.WriteLine("IQR> Quest not found")
-- end

-- quest  = QuestManager:GetQuestTextFromName("Untangled Webs")
-- if quest ~= nil then
--     QuestWindow:EnqueueQuest(quest, "new")
-- else
--     Turbine.Shell.WriteLine("IQR> Quest not found")
-- end