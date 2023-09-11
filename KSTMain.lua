local addonName, nameSpace = ... --Namespace
nameSpace.Main = {}

local Main = nameSpace.Main
local UIMain


function Main:Toggle()
  local mainframe = UIMain or Main:CreateFrame()
  if not mainframe:IsShown() then
    mainframe:Show()
    else mainframe:Hide()
    end
end

function Main:CreateFrame()
    
  UIMain = CreateFrame("Frame", "KeystoneTrackerFrame", UIParent, "BasicFrameTemplateWithInset")
  UIMain:SetSize(300, 500)
  UIMain:SetPoint("CENTER", UIParent, "CENTER")

  UIMain.title = UIMain:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  UIMain.title:SetPoint("CENTER", UIMain.TitleBg, "CENTER", 0, 0)
  UIMain.title:SetText("Keystone Tracker")

  --Buttons
  --Main.saveBtn = self:CreateButton("CENTER", Main, "TOP", -70, "Save")

  --Fontstring
  local statusText = UIMain:CreateFontString(nil,"OVERLAY", "GameFontNormal")
  statusText:SetPoint("CENTER")
  statusText:SetText("Testing")


  UIMain:Hide()
  return UIMain
  
end






local mapNames = {
    [657] = "Vortex Pinnacle",
    [1458] = "Neltharions Lair",
    [1754] = "Freehold",
    [1841] = "Underrot",
    [2451] = "Uldaman: Legacy of Tyr",
    [2519] = "Neltharus",
    [2520] = "Brackenhide Hollow",
    [2527] = "Halls of Infusion"

  }

--statusText:SetText("Keystonelevel: " ..keyStoneLevel.. "KeystoneMap:" ..mapNames[mapID])
--print("Keystonelevel: " ..keyStoneLevel.. "KeystoneMap:" ..mapNames[mapID] )

--if not KeystoneTrackerFrame:IsShown() then
--  KeystoneTrackerFrame:Show()
--else KeystoneTrackerFrame:Hide()
--end

--local keyStoneLevel = C_MythicPlus.GetOwnedKeystoneLevel()
--local mapID = C_MythicPlus.GetOwnedKeystoneMapID()

