--Behaviour and Gui related stuff of the config window
-- Namespaces
local addonName, nameSpace = ...
nameSpace.Config = {}

local Config = nameSpace.Config
local UIConfig

-- Defaults
local defaults = {}


--Config functions

function Config:Toggle()
    local menu = UIConfig or Config:CreateMenu()
    if not menu:IsShown() then
        menu:Show()
      else menu:Hide()
      end
end

function Config:CreateButton(point, relativeFrame, relativePoint, yOffset, text)
    local btn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
    btn:SetPoint(point, relativeFrame, relativePoint, 0, yOffset)
    btn:SetSize(140, 40)
    btn:SetText(text)
    btn:SetNormalFontObject("GameFontNormalLarge")
    btn:SetHighlightFontObject("GameFontHighlightLarge")
    return btn
end

function Config:CreateMenu()
    
    UIConfig = CreateFrame("Frame", "KeystoneTrackerConfig", UIParent, "BasicFrameTemplateWithInset")
    UIConfig:SetSize(260, 360)
    UIConfig:SetPoint("CENTER", UIParent, "CENTER")

    UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    UIConfig.title:SetPoint("CENTER", UIConfig.TitleBg, "CENTER", 0, 0)
    UIConfig.title:SetText("Keystone Tracker Options")

    --Buttons

    UIConfig.saveBtn = self:CreateButton("CENTER", UIConfig, "TOP", -70, "Save")

    UIConfig.resetBtn = self:CreateButton("TOP", UIConfig.saveBtn, "BOTTOM", -10, "Reset")

    UIConfig.loadBtn = self:CreateButton("TOP", UIConfig.resetBtn, "BOTTOM", -10, "Load")
    UIConfig:Hide()

    return UIConfig
    
end

