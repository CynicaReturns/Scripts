--// Functions
repeat wait() until game:IsLoaded()
if game:IsLoaded() then
  local CurPlayer
  for _, v in pairs(game:GetService("Workspace").CreativeCorner.Spawned:GetChildren()) do
    if v.Name == game:GetService("Players"):FindFirstChild(v) then
      CurPlayer = v
      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.StatuePodium.CFrame
      task.wait(.2)
      fireproximityprompt(v.Part:FindFirstChild("SculpturePrompt_" .. CurPlayer), 0)
    end
  end
  game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
        if State == Enum.TeleportState.Started then
            local queueTeleport = syn and syn.queue_on_teleport or queue_on_teleport
            if queueTeleport then
                queueTeleport("")
            end
        end
  end)
  task.wait(2)
  local x = {}
        for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                x[#x + 1] = v.id
            end
        end
        if #x > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
        else
            return game.StarterGui:SetCore("SendNotification", {
                Title = "CynicaHub",
                Text = "Couldn't find a Server",
                Duration = 4
            })
        end
end
