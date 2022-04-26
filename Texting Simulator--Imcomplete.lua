getgenv().farmer = true;
getgenv().click = false;

---click
spawn(function()
    while getgenv().farmer == true do
local args = {
    [1] = "Phone"
}
game:GetService("ReplicatedStorage").Events.SendTexts:FireServer(unpack(args))
    wait()
    end
end)

-- local playerHead = game.Players.LocalPlayer.Character.Head
-- for i, v in pairs(game:GetService("Workspace").Gems:GetDescendants()) do
--     if v.Name == "TouchInterest" and v.Parent then
--         --We will fire the touch event
--         firetouchinterest(playerHead, v.Parent , 0)
--         wait()
--         firetouchinterest(playerHead, v.Parent , 1)
--     end
-- end

--[[function teleportTO(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end
teleportTO(game:GetService("Workspace").GemSpawns.Spawn.CFrame)--]]



-----ZOne 1
--local args = {
    --[1] = workspace.Doors:FindFirstChild("1")
--}
--game:GetService("ReplicatedStorage").Events.Zone:FireServer(unpack(args))

--[[local args = {
    [1] = game:GetService("ReplicatedStorage").IngameItems.Crates:FindFirstChild("1")
}

game:GetService("ReplicatedStorage").Events.PurchaseCrate:FireServer(unpack(args)--]]
