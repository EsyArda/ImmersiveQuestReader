-- Quest Manager

import "EsyIQR.ImmersiveQuestReader.QuestDatabase"

QuestManager = class();

function QuestManager:Constructor()
    self.quests = QUESTS.quest
end

function QuestManager:IsNewQuest(chatMessage)
    if string.find(chatMessage, "New Quest: ") then
        if DEBUG then Turbine.Shell.WriteLine("IQR.QuestManager> New quest found") end
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
    return string.sub(chatMessage, 12);
end

function QuestManager:GetNameFromChatMessageCompletedQuest(chatMessage)
    return string.sub(chatMessage, 12);
end

-- Returns the quest text for a given quest name
function QuestManager:GetQuestTextFromName(questName)
    for _, quest in pairs(self.quests) do
        if quest.name == questName then
            if DEBUG then Turbine.Shell.WriteLine("IQR.QuestManager> Quest found: '" .. quest.name .. "'") end
            return quest -- Retourne la quête si le nom correspond
        end
    end
    return nil -- Retourne nil si la quête n'est pas trouvée
end
