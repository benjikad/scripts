getgenv().E = true
while getgenv().E == true do
	task.wait()
	for i, v in ipairs(game:GetService('CoreGui'):GetChildren()) do
		if v:IsA('Highlight') then
			v:Destroy()
		end
	end
	for i, v in ipairs(workspace:GetChildren()) do
		if v:IsA('Model') then
			if v.Name ~= 'Map' and v.Name ~= 'Lobby' and v.Name ~= 'Ignore' and v.Name ~= 'Spawns' and v.Name ~= 'PlacementGhosts' and v.Name ~= 'ArmorHolder' and v.Name ~= 'TreesContainer' and v.Name ~= 'Bushes' then
				if v:FindFirstChild('Owner') and v:FindFirstChild('Immunity') and v:FindFirstChild('Alive') then
					
					local h = Instance.new("Highlight")
					h.Parent = game:GetService("CoreGui")
					h.Adornee = v
					if v:FindFirstChild('Alive').Value == true then
						h.FillTransparency = .5
					else
						h.FillTransparency = .9
					end
					h.OutlineTransparency = 1
				end
			end
		end
	end
end
