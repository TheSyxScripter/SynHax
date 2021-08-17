local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local ez = DiscordLib:Window("Bedwars - Manface Clan - https://bit.ly/manfaceclan")

local sus = ez:Server("Manface", "")

local sussyimpostor = sus:Channel("Scripts")
local cred = sus:Channel("Credits")

cred:Label("Made by The Manface Clan - https://bit.ly/manfaceclan")
cred:Label("Ui Lib by dawid#7205")
sussyimpostor:Toggle("Instant Pick Up",false, function(fard)
while true do
			wait()
			for i,v in pairs(workspace.ItemDrops:GetChildren()) do
				if Character and Character.Humanoid.Health>0 and (v.Position-Character.HumanoidRootPart.Position).magnitude<=10 then
					local x,y,z = math.ceil(v.Position.X/3),math.ceil(v.Position.Y/3),math.ceil(v.Position.Z/3)
					coroutine.wrap(function()
						RemoteFolder.PickupItemDrop:InvokeServer({itemDrop=v})
					end)()
				end
			end
end
end)
 
 
end)
