-- Quest Window

import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

QuestWindow = class(Turbine.UI.Lotro.Window);

function QuestWindow:Constructor()
    Turbine.UI.Lotro.Window.Constructor(self);

    local windowWidth = 500;
    local windowHeight = 300;

    self:SetSize(windowWidth, windowHeight);
    
    local screenWidth, screenHeight = Turbine.UI.Display.GetSize();
    local x = (screenWidth - windowWidth) / 2;
    local y = (screenHeight - windowHeight) / 2;
    self:SetPosition(x, y);
    self:SetMouseVisible(true);
    self:SetText("Quest name");
    self:SetVisible(false); -- Hidden by default



    -- Create a label for the text of the quest
    self.questTextLabel = Turbine.UI.Label();
    self.questTextLabel:SetParent(self);
    self.questTextLabel:SetSize(windowWidth - 40, windowHeight - 80);
    self.questTextLabel:SetPosition(20, 40);
    self.questTextLabel:SetFont(Turbine.UI.Lotro.Font.BookAntiqua24);
    self.questTextLabel:SetText("Quest text");
    self.questTextLabel:SetVisible(true);
    

    -- Player (needed for their name)
    self.player = Turbine.Gameplay.LocalPlayer:GetInstance();
    
    -- Current quest displayed
    self.quest = nil;
    -- Table of lines of the quest text
    self.questLines = {};
    -- Current index in the table of lines
    self.currentLine = 1;
    
    
    -- Can click on the text
    self.questTextLabel.MouseUp = function(sender, args)
        if self.currentLine < #self.questLines then
            self.currentLine = self.currentLine + 1;
            self:SetQuestText(self.questLines[self.currentLine]);
        else
            self:SetVisible(false);
        end    
    end
end

function QuestWindow:SetQuestName(questName)
    self:SetText(questName);
end

function QuestWindow:SetQuestText(questText)
    self.questTextLabel:SetText(questText);
end

function QuestWindow:NewQuest(quest)
    self.quest = quest;
    self:SetVisible(true);
    self:SetQuestName(quest.name);
    
    local questText = "";
    if quest.bestower.text ~= nil and type(quest.bestower.text) == "string" then
        questText = quest.bestower.text;
    else
        questText = quest.bestower[1].text;
    end
    questText = self:ComputeQuestText(questText);

    -- Split the text in a table of lines
    for line in string.gmatch(questText, "[^\n]+") do -- Match all characters except new line
        table.insert(self.questLines, line);
    end

    self:SetQuestText(self.questLines[1]);
end


function QuestWindow:ComputeQuestText(questText)
    local playerName = self.player:GetName();
    local questTextComputed = string.gsub(questText, "${PLAYER}", playerName);
    return questTextComputed;
end
