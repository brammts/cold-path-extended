require "environment"

local validate_scenario = require "scripts.validate_scenario"
-- Some comment
original_game_data = require "content.scenarios.europe_remastered.wwi"
game_data = deepcopy(original_game_data)

debug_log("Start server:", true)

math.randomseed(os.time())

validate_scenario.validate(game_data)

if game_data.custom_map then
    print("custom map")
    load_adjacency(true, "maps/"..game_data.map.."/adjacency.dat")
else
    load_adjacency()
end
network.start(true)

local ok, err = pcall(function()
	while not server_is_off do
		network.update()
		sleep(0.01)
	end
end)

if not ok then
	local file = io.open("./logs/server_crash.dat", "a")
	if file then
		file:write(err.."\n")
		file:close()
	else
		print("file creation error")
	end
end
