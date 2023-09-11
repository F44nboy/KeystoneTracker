local addonName, nameSpace = ...
    
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



