--Main file here goes addon logic like db seting of vars etc.
local addonName, nameSpace = ...
    
--DB to be saved between sessions
keystoneTrackerDB = {

}

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

  --[[
nameSpace.commands = {
    ["config"] = nameSpace.Config.Toggle(),

    ["show"] = nameSpace.Main.Toggle()
}--]]

--Registering Slashcommand
SLASH_KEYSTONETRACKER1 = "/kst"
SLASH_KEYSTONETRACKER2 = "/keystonetracker"
SlashCmdList["KEYSTONETRACKER"] = function (str)
    if ( #str == 0 ) then
        nameSpace.Main.Toggle()
    elseif ( str == "show" ) then
        nameSpace.Main.Toggle()
    elseif (str == "config") then
        nameSpace.Config.Toggle()
    end
end



