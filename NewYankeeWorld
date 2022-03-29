--// New Yankee World \\--
if game.PlaceId == 8107309695 then
    spawn(function()
        while wait() do
            pcall(function()
                game.Players.LocalPlayer.Character:FindFirstChild("AntiExploit"):Destroy()
                game.Players.LocalPlayer.Character:FindFirstChild("LowHealth"):Destroy()
                game.Players.LocalPlayer.Character:FindFirstChild("Health"):Destroy()
            end)
        end
    end)
    --// Library \\--
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("New Yankee World - cynica#9999", "Ocean")
    --// Main \\--
    local Main = Window:NewTab("Main")
    local ExploitSection = Main:NewSection("Exploits")
    local Target
    ExploitSection:NewToggle("Auto Kill All Players", "Kills all Players", function(v)
        getgenv().autoKillAll = v
        game.RunService.RenderStepped:Connect(function()
            if not getgenv().autoKillAll then return end
            local args = {
                [1] = "turnon"
            }
            game:GetService("Players").LocalPlayer.PlayerGui.Combat.RemoteEvent:FireServer(unpack(args))
            Target = nil
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character.Parent == game.Workspace and v.Character:FindFirstChild("Humanoid") and v ~= game.Players.LocalPlayer and not v.Character:FindFirstChild("ForceField") then
                    Target = v.Character
                    repeat wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.HumanoidRootPart.CFrame + Vector3.new(0, 0, 1)
                        mouse1click()
                        local args = {
                            [1] = "Punch",
                            [2] = game:GetService("Players")[v].Character
                        }
                        game:GetService("Players").LocalPlayer.PlayerGui.Combat.RemoteEvent:FireServer(unpack(args))
                    until Target.Humanoid.Health == 0
                end
            end
        end)
    end)
    ExploitSection:NewTextBox("Kill Player", "Kills a Player of your choice", function(v)
        if not game.Players:FindFirstChild(v) then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Error",
                Text = "Player has not been found",
                Duration = 4
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Success",
                Text = "Killing Player: " .. v,
                Duration = 4
            })
            if not getgenv().autoKillAll then return end
            local args = {
                [1] = "turnon"
            }
            game:GetService("Players").LocalPlayer.PlayerGui.Combat.RemoteEvent:FireServer(unpack(args))
            local Target2 = v
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target2.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 1)
                mouse1click()
                local args = {
                    [1] = "Punch",
                    [2] = game:GetService("Players")[Target2].Character
                }
                game:GetService("Players").LocalPlayer.PlayerGui.Combat.RemoteEvent:FireServer(unpack(args))
            until Target2.Character.Humanoid.Health == 0
        end
    end)
    --// Player \\--
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("WalkSpeed", "Changes your Players WalkSpeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerSection:NewSlider("JumpPower", "Changes your Players JumpPower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    PlayerSection:NewButton("No Roleplay Name", "Deletes your RP Name", function()
        pcall(function()
            game.Players.LocalPlayer.Character.Head.RoleplayName:Destroy()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Success!",
                Text = "Destroyed your RP Name",
                Duration = 4
            })
        end)
    end)
    PlayerSection:NewButton("No JumpCooldown", "Yes basically no JumpCooldown", function()
        pcall(function()
            game.Workspace["Jump Cooldown"]:Destroy()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Success!",
                Text = "Destroyed Jump Cooldown",
                Duration = 4
            })
        end)
    end)
    PlayerSection:NewButton("No Ragdoll", "Your Player doesnt Ragdoll", function()
        pcall(function()
            game.Players.LocalPlayer.Character.RagdollMain:Destroy()
        end)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!",
            Text = "Destroyed Ragdoll L Game",
            Duration = 4
        })
    end)
