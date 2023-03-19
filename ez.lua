
local players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local func = coroutine.create(function()
	while task.wait(0.1) do
		for i,v in pairs(players:GetChildren()) do
			if v.Name ~= players.LocalPlayer.Name then
				ReplicatedStorage.CarbonResource.Events:GetChildren()[4]:FireServer(players.LocalPlayer.Backpack['Makarov PM'], v.Character.Humanoid, math.huge, "Head",{
					'nil',
					'Auth',
					'nil',
					'nil'})
			end
		end
	end
end)
coroutine.resume(func)

-- 아니 뭔 보안이 이걸로 뚫림ㅋㅋ