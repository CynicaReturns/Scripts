--[[
    There is no need to put this in autoexecute unless you don't have synapse
    Cynica
--]]

--// Functions
game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
game:GetService('StarterGui'):SetCore('SendNotification', {
  Title = 'Creator Challenge';
  Text = 'Executed script successfully\nBy Cynica';
  Duration = 4
})
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
   if State == Enum.TeleportState.Started then
     local queueTeleport = syn and syn.queue_on_teleport or queue_on_teleport
     if queueTeleport then
      queueTeleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/cynicamanee/Scripts/main/RobloxCreatorChallenge.lua'))()")
    end
  end
end)
local function solve()
  for i = 1, 10 do
    game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson" .. i)
  end
  game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = 'Creator Challenge';
    Text = 'Collected all badges, moving on...';
    Duration = 4
  })
end
if game.PlaceId == 2546610365 then
  repeat task.wait() until game:IsLoaded()
  task.wait(3)
  solve()
  task.wait(4)
  game:GetService('TeleportService'):Teleport(1871632192, game:GetService('Players').LocalPlayer)
 elseif game.PlaceId == 1871632192 then
  repeat task.wait() until game:IsLoaded()
  task.wait(3)
  solve()
  task.wait(4)
  game:GetService('TeleportService'):Teleport(3204381131, game:GetService('Players').LocalPlayer)
 elseif game.PlaceId == 3204381131 then
  repeat task.wait() until game:IsLoaded()
  task.wait(3)
  solve()
  task.wait(4)
  game:GetService('TeleportService'):Teleport(4201429814, game:GetService('Players').LocalPlayer)
 elseif game.PlaceId == 4201429814 then
  repeat task.wait() until game:IsLoaded()
  task.wait(3)
  solve()
  task.wait(4)
  game:GetService('TeleportService'):Teleport(2546610365, game:GetService('Players').LocalPlayer)
end
