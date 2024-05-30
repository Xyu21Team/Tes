local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
  Title = "redz Hub : Blox Fruits",
  SubTitle = "by redz9999",
  SaveFolder = "testando | redz lib v5.lua"
})
local Status = Window:MakeTab({"Info"})
Statud:AddDiscordInvite({
  Name = "redz Hub | Community",
  Logo = "rbxassetid://15298567397",
  Invite = "https://discord.gg/7aR7kNVt4g"
})

Status:AddSeperator("Status Game")
Time = Status:AddLabel("Executer Time")

function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Time:Set("[Sever Time]: Hours: "..Hour.." Minutes: "..Minute.." Seconds: "..Second)
end

spawn(function()
while task.wait() do
pcall(function()
UpdateTime()
end)
end
end)

Client = Status:AddLabel("Client")

function UpdateClient()
local Fps = workspace:GetRealPhysicsFPS()
Client:Set("[FPS]: "..Fps)
end

spawn(function()
while true do wait(.1)
UpdateClient()
end
end)

Client1 = Status:AddLabel("Client")

function UpdateClient1()
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
Client1:Set("[PING]: "..Ping)
end

spawn(function()
while true do wait(.1)
UpdateClient1()
end
end)

Status:AddLabel("Exploit Using: ".. identifyexecutor())

Status:AddSeperator("Status Sever")
Status:AddSeperator("Status Elite")
local EliteProgress = Status:AddLabel("N/A")
    
    spawn(function()
        pcall(function()
            while wait() do
                EliteProgress:Set("Elite Progress: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
        end)
    end)
    
    local Elite_Hunter_Status = Status:AddLabel("N/A")


	spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
					Elite_Hunter_Status:Set("Status: Elite Spawn")	
				else
					Elite_Hunter_Status:Set("Status: Elite Not Spawn")	
				end
			end)
		end
	end)
Status:AddSeperator("Status Kitsune")
local Galaxy = Status:AddLabel("N/A")
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.Map:FindFirstChild("KitsuneIsland") then
				Galaxy:Set("🏝 Kitsune Island:  ✅")
			else
				Galaxy:Set("🏝 Kitsune Island:  ❌")
			end
		end)
	end
end) 
Status:AddSeperator("Status Mirage")
spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    Mirragecheck:Set('🏝️: Mirage Island is Spawning')
    else
      Mirragecheck:Set('❌: Mirage Island Not Found' )end
            end
        end)
end)
Mirragecheck = Status:AddLabel("N/A")
Status:AddSeperator("Status Moon")
local FM = Status:AddLabel('Wait For Moon...')
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:Set("🌕: Full Moon 100%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:Set("🌖: Full Moon 75%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:Set("🌗: Full Moon 50%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:Set("🌘: Full Moon 25%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:Set("🌘: Full Moon 15%")
                    else
                        FM:Set("Wait For Moon")
                    end
                end)
            end
    end)
Status:AddSeperator("Status Frozen")
spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:Set('🟢: Frozen Dimension Spawning')
            else
                FrozenIsland:Set('🔴: Frozen Dimension Not Found')
            end
        end
    end)
end)

FrozenIsland = Status:AddLabel("N/A")

Status:AddSeperator("Status Bone")
BoneCheck = Status:AddLabel("Total Bone: N/A")
    
    spawn(function()
        while wait() do
            pcall(function()
                BoneCheck:Set("Total Bone: "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
            end)
        end
    end)
Status:AddSeperator("Status Observation") 
local ObservationRange = Status:AddLabel("Observation Range Level: N/A")
    
    spawn(function()
        while wait() do
            pcall(function()
                ObservationRange:Set("Observation Range Level: "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)

Status:AddSeperator("Status Legend Swords")

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                LegendSwordsSet("Shisui")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2") then
                LegendSwords:Set("Wando")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3") then
                LegendSwords:Set("Saddi")
            else
                LegendSwords:Set("Not Found Legend Swords")
            end
        end
    end)
end)

LegendSwords = Status:AddLabel("N/A")
Status:AddSeperator("Status Haki Dealer")
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1") then
                ColorHaki:Set(KuyKoben)
            else
                ColorHaki:Set("Not Found Haki Dealer")
            end
        end
    end)
end)

ColorHaki = Status:AddLabel("N/A")

Status:AddSeperator("Status Player")
    
    local locallv = Status:AddLabel("Level")
    
    spawn(function()
        while wait() do
            pcall(function()
                locallv:Set("Level:".." "..game:GetService("Players").LocalPlayer.Data.Level.Value)
            end)
        end
    end)
    
    local localrace = Status:AddLabel("Race")
    
    spawn(function()
        while wait() do
            pcall(function()
                localrace:Set("Race:".." "..game:GetService("Players").LocalPlayer.Data.Race.Value)
            end)
        end
    end)
    
    local localbeli = Status:AddLabel("Beli")
    
    spawn(function()
        while wait() do
            pcall(function()
                localbeli:Set("Beli:".." "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
            end)
        end
    end)
    
    local localfrag = Status:AddLabel("Fragment")
    
    spawn(function()
        while wait() do
            pcall(function()
                localfrag:Set("Fragments:".." "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
            end)
        end
    end)
    
    
    local localexp = Status:AddLabel("ExP")
    
    spawn(function()
        while wait() do
            pcall(function()
                localexp:Set("ExP Points:".." "..game:GetService("Players").LocalPlayer.Data.Exp.Value)
            end)
        end
    end)
    
    local localstat = Status:AddLabel("Stats Points")
    
    spawn(function()
        while wait() do
            pcall(function()
                localstat:Set("Stats Points:".." "..game:GetService("Players").LocalPlayer.Data.Points.Value)
            end)
        end
    end)
    
    local localbountyhornor = Status:AddLabel("Bounty")
    
    spawn(function()
        while wait() do
            pcall(function()
                localbountyhornor:Set("Bounty / Honor:".." "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
            end)
        end
    end)
    
    local localDevil = Status:AddLabel("Devil Fruit")
    
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                    localDevil:Set("Devil Fruit:".." "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                else
                    localDevil:Set("Not Have Devil Fruit")
                end
            end)
        end
    end)

Status:AddSeperator(" Sword ")

local Saber = Status:AddLabel("❌: Saber")
local Rengoku = Status:AddLabel("❌: Rengoku")
local Midnight_Blade = Status:AddLabel("❌: Midnight Blade")
local Dragon_Trident = Status:AddLabel("❌: Dragon Trident")
local Yama = Status:AddLabel("❌: Yama")
local Buddy_Sword = Status:AddLabel("❌: Buddy Sword")
local Canvander = Status:AddLabel("❌: Canvander")
local Twin_Hooks = Status:AddLabel("❌: Twin Hooks")
local Spikey_Trident = Status:AddLabel("❌: Spikey Trident")
local Hallow_Scythe = Status:AddLabel("❌: Hallow Scythe")
local Dark_Dagger = Status:AddLabel("❌: Dark Dagger")
local Tushita = Status:AddLabel("❌: Tushita")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Saber:Set("✅: Saber")
                end
                if v.Name == "Rengoku" then
                    Rengoku:Set("✅: Rengoku")
                end
                if v.Name == "Midnight Blade" then
                    Midnight_Blade:Set("✅: Midnight Blade")
                end
                if v.Name == "Dragon Trident" then
                    Dragon_Trident:Set("✅: Dragon Trident")
                end
                if v.Name == "Yama" then
                    Yama:Set("✅: Yama")
                end
                if v.Name == "Buddy Sword" then
                    Buddy_Sword:Set("✅: Buddy Sword")
                end
                if v.Name == "Canvander" then
                    Canvander:Set("✅: Canvander")
                end
                if v.Name == "Twin Hooks" then
                    Twin_Hooks:Set("✅: Twin Hooks")
                end
                if v.Name == "Spikey Trident" then
                    Spikey_Trident:Set("✅: Spikey Trident")
                end
                if v.Name == "Hallow Scythe" then
                    Hallow_Scythe:Set("✅: Hallow Scythe")
                end
                if v.Name == "Dark Dagger" then
                    Dark_Dagger:Set("✅: Dark Dagger")
                end
                if v.Name == "Tushita" then
                    Tushita:Set("✅: Tushita")
                 end
            end
        end)
    end
end)

Status:AddSeperator("Quest")

local Bartilo_Quest = Status:AddLabel("❌: Bartilo Quest")
local Don_Swan_Quest = Status:AddLabel("❌: Don Swan Quest")
local Kill_Don_Swan = Status:AddLabel("❌: Kill Don Swan")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            Bartilo_Quest:Set("✅: Bartilo Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
            --Nothing
        else
            Don_Swan_Quest:Set("✅: Don Swan Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
            Kill_Don_Swan:Set("✅: Kill Don Swan")
        end
    end
end)

Status:AddSeperator("Sword Legendary")

local Shisui = Status:AddLabel("❌: Shisui")
local Saddi = Status:AddLabel("❌: Saddi")
local Wando = Status:AddLabel("❌: Wando")
local True_Triple_Katana = Status:AddLabel("❌: True Triple Katana")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Shisui" then
                    Shisui:Set("✅: Shisui")
                end
                if v.Name == "Saddi" then
                    Saddi:Set("✅: Saddi")
                end
                if v.Name == "Wando" then
                    Wando:Set("✅: Wando")
                end
                if v.Name == "True Triple Katana" then
                    True_Triple_Katana:Set("✅: True Triple Katana")
                end
            end
        end)
    end
end)

Status:AddSeperator("Melee")

local Superhuman = Status:AddLabel("❌: Superhuman")
local Death_Step = Status:AddLabel("❌: Death Step")
local Sharkman_Karate = Status:AddLabel("❌: Sharkman Karate")
local Electric_Claw = Status:AddLabel("❌: Electric Claw")
local Dragon_Talon = Status:AddLabel("❌: Dragon Talon")
local God_Human = Status:AddLabel("❌: God Human")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
            Superhuman:Set("✅: Superhuman")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
            Death_Step:Set("✅: Death Step")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
            Sharkman_Karate:Set("✅: Sharkman Karate")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
            Electric_Claw:Set("✅: Electric Claw")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
            Dragon_Talon:Set("✅: Dragon Talon")
        end
    end
end)

Status:AddSeperator("Gun")

local Kabu_cha = Status:AddLabel("❌: Kabucha")
local Acidum_Rifle = Status:AddLabel("❌: Acidum Rifle")
local Bizarre_Rifle = Status:AddLabel("❌: Bizarre Rifle")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Kabucha" then
                    Kabu_cha:Set("✅: Kabucha")
                end
                if v.Name == "Acidum Rifle" then
                    Acidum_Rifle:Set("✅: Acidum Rifle")
                end
                if v.Name == "Bizarre Rifle" then
                    Bizarre_Rifle:Set("✅: Bizarre Rifle")
                end
            end
        end)
    end
end)



Status:AddSeperator("Accessory")

local Dark_Coat = Status:AddLabel("❌: Dark Coat")
local Ghoul_Mask = Status:AddLabel("❌: Ghoul Mask")
local Swan_Glass = Status:AddLabel("❌: Swan Glass")
local Pale_Scarf = Status:AddLabel("❌: Pale Scarf")
local Valkyrie_Helm = Status:AddLabel("❌: Valkyrie Helm")


spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Dark_Coat:Set("✅: Dark Coat")
                end
                if v.Name == "Ghoul Mask" then
                    Ghoul_Mask:Set("✅: Ghoul Mask")
                end
                if v.Name == "Swan Glasses" then
                    Swan_Glass:Set("✅: Swan Glass")
                end
                if v.Name == "Pale Scarf" then
                    Pale_Scarf:Set("✅: Pale Scarf")
                end
                if v.Name == "Valkyrie Helmet" then
                    Valkyrie_Helm:Set("✅: Valkyrie Helmet")
                end
            end
        end)
    end
end)

local Tab2 = Window:MakeTab({"Dois", "swords"})
local Tab3 = Window:MakeTab({"Três", "user"})

Tab1:AddButton({"Dark Theme", function()
  redzlib:SetTheme("Dark")
end})

Tab1:AddButton({"Darker Theme", function()
  redzlib:SetTheme("Darker")
end})

Tab1:AddButton({"Dark Purple", function()
  redzlib:SetTheme("Purple")
end})

Window:SelectTab(Tab2)
local Section = Tab2:AddSection({"Section"})
local Paragraph = Tab2:AddParagraph({"Paragraph", "This is a Paragraph\nSecond Line"})

local Number = 0
local Button = Tab2:AddButton({"Button", function()
  Number = Number + 1
  Section:Set("Number : " .. tostring(Number))
  local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
      {"Confirm", function()
        
      end},
      {"Maybe", function()
        
      end},
      {"Cancel", function()
        
      end}
    }
  })
end})

local Button = Tab2:AddButton({
  Name = "Invisible Toggle",
  Description = "Makes the Toggles Invisible"
})

local Toggle1 = Tab2:AddToggle({
  Name = "Toggle 1",
  Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
  Default = false
})

local Toggle2 = Tab2:AddToggle({
  Name = "Toggle 2",
  Default = true
})

Button:Callback(Toggle1.Visible)
Button:Callback(Toggle2.Visible)

Toggle1:Callback(function(Value)
  Toggle2:Set(false)
end)
Toggle2:Callback(function(Value)
  Toggle1:Set(false)
end)

Tab2:AddSlider({
  Name = "Slider",
  Min = 1,
  Max = 10,
  Increase = 1,
  Default = 5,
  Callback = function(Value)
    
  end
})

-- local Button = Tab2:AddButton({"Refresh Dropdown"})

local Dropdown = Tab2:AddDropdown({
  Name = "Players List",
  Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
  Options = {"one", "two", "three"},
  Default = "two",
  Flag = "dropdown teste",
  Callback = function(Value)
    
  end
})]]

--[[Button:Callback(function()
  Dropdown:Set(game.Players:GetPlayers())
  Dropdown:Remove(game.Players.LocalPlayer.Name)
end)

Dropdown:Remove(Player.Name)
Dropdown:Select(1)]]

--[[Tab2:AddTextBox({
  Name = "Textbox",
  Description = "this is a Text box",
  Default = "Text",
  Callback = function(Value)
    
  end
})

Tab3:AddDiscordInvite({
  Name = "redz Hub | Community",
  Logo = "rbxassetid://15298567397",
  Invite = "https://discord.gg/7aR7kNVt4g"
})

-- Simple example ;)
-- More in soon...