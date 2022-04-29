getgenv().click = true;
getgenv().rebirth = true;
getgenv().super = true;
getgenv().EquipBest = false;
getgenv().all = true;

---Click
spawn(function()
    while click == true do
    game:GetService("ReplicatedStorage").Events.ClickEvent:InvokeServer()
    end
end)
---Rebirth
spawn(function()
    while rebirth == true do
        local args = {
    [1] = 1e+21
    }
    game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(unpack(args))
    end
end)
---Super Rebirth
spawn(function()
    while super == true do
        local args = {
            [1] = "SuperRebrith50000000"
        }
        
        game:GetService("ReplicatedStorage").Events.SuperRebirth:InvokeServer(unpack(args))
    end
end)
---EquipBest
spawn(function()
    while EquipBest == true do 
        local args = {
            [1] = "EquipBest",
            [2] = {}
        }
        
        game:GetService("ReplicatedStorage").Events.HandlePet:InvokeServer(unpack(args))
    end
end)
---Buy all rebirth
spawn(function()
    while all == true do 
        local args = {
            [1] = "RebirthButton",
            [2] = "BuyAll"
        }

        game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer(unpack(args))
    end
end)
--- Anti-Afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
   vu:Button2Down(Vector2.new())
   vu:Button2Up(Vector2.new())
end)


local clickMod = require(game:GetService("Players").AemberR.PlayerScripts.Controllers.Gui.GuiService.ClickerModule)
clickMod:Click()