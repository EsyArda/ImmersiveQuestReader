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
    self.questTextLabel:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    self.questTextLabel:SetBackColor(Turbine.UI.Color(0.74,0.11,0.17,0.29));
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
            self.questLines = {};
            self.currentLine = 1;
            self:SetVisible(false);
        end    
    end


    -- Number of pages
    self.pageNumber = Turbine.UI.Label();
    self.pageNumber:SetParent(self);
    self.pageNumber:SetSize(windowWidth - 40, 20);
    self.pageNumber:SetPosition(20, windowHeight - 40);
    self.pageNumber:SetBackColor(Turbine.UI.Color(0.74,0.11,0.29,0.16));
    self.pageNumber:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight);
    self.pageNumber:SetText("Quest Name - 1/1");
end

function QuestWindow:SetQuestName(questName)
    self:SetText(questName);
end

function QuestWindow:SetQuestText(questText)
    self.questTextLabel:SetText(questText);
end

function QuestWindow:ShowQuest(quest, state)
    self.quest = quest;
    self:SetVisible(true);
    self:SetQuestName(quest.name);
    
    local questText = "";
    if state ~= nil and state == "completed" then
        Turbine.Shell.WriteLine("IQR> Quest completed");
    else
        if quest.bestower.text ~= nil and type(quest.bestower.text) == "string" then
            questText = quest.bestower.text;
        else
            questText = quest.bestower[1].text;
        end

    end        
    questText = self:ComputeQuestText(questText);

    -- Split the text in a table of lines
    for line in string.gmatch(questText, "[^ '\n][^.!?\n]+[.!?]*") do
        -- [^\n]+ Matches everything except new line 
        -- [^ '\n][^.!?\n]+[.!?]* Does not start with a space or a quote then match any character except .!? and new line one or more times then match .!? zero or more times to include them at the end of the line.
        if line ~= "" then
            table.insert(self.questLines, line);
        end
    end

    self:SetQuestText(self.questLines[1]);
end


function QuestWindow:ComputeQuestText(questText)
    local questTextComputed = string.gsub(questText, "${PLAYER}", self.player:GetName());
    questTextComputed = string.gsub(questTextComputed, "${RACE}", self.player:GetRace()); --outputs a number :c
    return questTextComputed;
end
