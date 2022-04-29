if game.PlaceId == 6672200623 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ninja Simulator", "Midnight")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("MainSection")
local Hello = Window:NewTab("Hello")


MainSection:NewToggle("DNA", "Buys all available DNA", function(v)
   getgenv.DNA = v
   while true do
        if not getgenv().DNA then return end
        local args = {
        [1] = "DNA"
        }
    
        game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer(unpack(args))
    wait()
end
end)


elseif game.PlaceId == 5490351219 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Clicker Madness!", "Midnight")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("MainSection")
    getgenv().Click = v


        ---mods---
    local clickMod = require(game:GetService("Players").AemberR.PlayerScripts.Aero.Controllers.UI.Click)

    
    MainSection:NewToggle("Click", "Clicks", function(v)

        function dotap()
            spawn(function()
                while true do 
                    if not getgenv().Click then return end
                    clickMod:Click()
                    wait()
             end
          end)
        end
    end)
    end