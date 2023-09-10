local KeystoneTracker = LibStub("AceAddon-3.0"):NewAddon("KeystoneTracker", "AceConsole-3.0")

myOptionsTable = {
    type = "group",
    args = {
      enable = {
        name = "Enable",
        desc = "Enables / disables the addon",
        type = "toggle",
        set = function(info,val) MyAddon.enabled = val end,
        get = function(info) return MyAddon.enabled end
      },
      moreoptions={
        name = "More Options",
        type = "group",
        args={
          -- more options go here
        }
      }
    }
  }