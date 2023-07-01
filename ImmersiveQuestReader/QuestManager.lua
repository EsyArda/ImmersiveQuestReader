-- Quest Manager

import "EsyIQR.ImmersiveQuestReader.QuestDatabase"

QuestManager = class();

function QuestManager:Constructor()
    self.quests = QUESTS.quest
end

function QuestManager:IsNewQuest(chatMessage)
    if string.find(chatMessage, "New Quest: ") then
        return true
    else
        return false
    end
end

function QuestManager:GetNameFromChatMessage(chatMessage)
    return string.sub(chatMessage, 12);
end


-- Returns the quest text for a given quest name
function QuestManager:GetQuestTextFromName(questName)
    for _, quest in pairs(self.quests) do
        if quest.name == questName then
            Turbine.Shell.WriteLine("IQR.Questmanager> Quest found: '" .. quest.name .. "'")
            return quest -- Retourne la quête si le nom correspond
        end
    end
    return nil -- Retourne nil si la quête n'est pas trouvée
end
