import "Turbine";
import "EsyIQR.ImmersiveQuestReader.QuestWindow"
import "EsyIQR.ImmersiveQuestReader.QuestManager"

Turbine.Shell.WriteLine("\nIQR> Starting Immersive Quest Reader...")

QuestWindow = QuestWindow()
QuestManager = QuestManager()


-- Callback when a message is received
Turbine.Chat.Received = function (sender, args)
    -- If message starts with "New Quest: " then get the quest name
    if(QuestManager:IsNewQuest(args.Message)) then
        local questName = QuestManager:GetNameFromChatMessage(args.Message)
        local quest = QuestManager:GetQuestTextFromName(questName)
        if quest ~= nil then
            QuestWindow:NewQuest(quest)
        end
    end
end

