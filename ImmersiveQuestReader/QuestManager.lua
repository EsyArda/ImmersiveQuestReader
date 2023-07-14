-- Quest Manager

import "EsyIQR.ImmersiveQuestReader.QuestDatabase0"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase1"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase2"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase3"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase4"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase5"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase6"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase7"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase8"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase9"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase10"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase11"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase12"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase13"
import "EsyIQR.ImmersiveQuestReader.QuestDatabase14"
import "EsyIQR.ImmersiveQuestReader.QuestDatabasem1"


QuestManager = class();

function QuestManager:Constructor()
    if QUESTS then self.questsByLevel = QUESTS.quest end
    self.questsByLevel = { QUESTS1.quest, QUESTS2.quest, QUESTS3.quest, QUESTS4.quest, QUESTS5.quest, QUESTS6.quest, QUESTS7.quest, QUESTS8.quest, QUESTS9.quest, QUESTS10.quest, QUESTS11.quest, QUESTS12.quest, QUESTS13.quest, QUESTS14.quest, QUESTSm1.quest}

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
    for _, database in pairs(self.questsByLevel) do
        for _, quest in pairs(database) do
            -- if quest.name then Turbine.Shell.WriteLine("IQR.QuestManager> Quest searched: '" .. quest.name .. "'") end
            if quest.name == questName then
                if DEBUG then Turbine.Shell.WriteLine("IQR.QuestManager> Quest found: '" .. quest.name .. "'") end
                return quest -- Retourne la quête si le nom correspond
            end
        end
    end
    return nil -- Retourne nil si la quête n'est pas trouvée
end
