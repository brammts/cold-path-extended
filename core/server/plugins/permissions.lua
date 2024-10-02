-- Permissions plugin

local M = {}

local api

local flatdb = require 'scripts.utils.flatdb'
local db

local permissions_groups = {
    admin = {
		"/kick",
		"/shutdown",
		"/ban",
		"/banid",
        "/unban",
		"/banip",
		"/mute",
		"/unmute",
		"/players",
		"/m",
		"/setmap",
		"/setscenario",
		"/nextgame",
		"/scenarios",
		"/rc",
		"/setcolor",
		"/pass",
		"/help",
		"/select",
		"/setciv",
		"/rtr",
		"/vote",
		"/setdifficulty",
		"/sudo",
		"/forcenext",
        "/p1",
        "/p2",
        "/track",
        "/peace",
        "/nopact",
        "/ow",
        "/reciv",
        "/role",
        "/info",
        "/history"
	},
    moder = {
		"/kick",
		"/shutdown",
		"/ban",
		"/banid",
        "/unban",
		"/banip",
		"/mute",
		"/unmute",
		"/players",
		"/m",
		"/setmap",
		"/setscenario",
		"/nextgame",
		"/scenarios",
		"/rc",
		"/setcolor",
		"/pass",
		"/help",
		"/select",
		"/setciv",
		"/rtr",
		"/vote",
		"/setdifficulty",
		"/sudo",
		"/forcenext",
        "/p1",
        "/p2",
        "/track",
        "/peace",
        "/nopact",
        "/ow",
        "/reciv",
        "/info",
        "/history"
	},
    junior = {
		"/kick",
		"/shutdown",
		"/ban",
		"/mute",
		"/unmute",
		"/players",
		"/m",
		"/setmap",
		"/setscenario",
		"/nextgame",
		"/scenarios",
		"/rc",
		"/setcolor",
		"/pass",
		"/help",
		"/select",
		"/setciv",
		"/rtr",
		"/vote",
		"/setdifficulty",
		"/sudo",
		"/forcenext",
        "/p1",
        "/p2",
        "/track",
        "/peace",
        "/nopact",
        "/reciv",
        "/info",
        "/history"
	},
	premium = {
		"/players",
		"/m",
		"/rc",
		"/setcolor",
		"/pass",
		"/help",
		"/select",
		"/rtr",
		"/vote",
		"/set_st",
        "/info"
	},
	player = {
		"/players",
		"/m",
		"/help",
		"/select",
		"/vote",
		"/set_st",
        "/info"
	}
}

local default_group = "player"

local function set_permissions_group(client, group)
	local clients_data = api.get_data("clients_data")
	clients_data[client].permissions_group = group
end

local function check_command_permission(client, cmd_1)
	if find_in_table(cmd_1, permissions_groups[api.get_data("clients_data")[client].permissions_group]) then
		return true
	else
		return false
	end
end

local function roles(client, args)

end

function M.init(_api)
	api = _api
	api.register_function("set_permissions_group", set_permissions_group)
	api.register_function("check_command_permission", check_command_permission)
    api.register_command("/role", set_role)
end

function M.on_player_registered(client)
	local clients_data = api.get_data("clients_data")
	if not clients_data[client].permissions_group then
		set_permissions_group(client, default_group)
	end
end

return M
