local t = {
	server_info = {
		type = "server_info",
		data = {
			name = "[EN] [Standard] Official server #1",
			players = 1,
			server_ip = "",
			server_port = 5555,
			size = 10
		}
	},

	SERVER_VERSION = 19,
	time_to_turn = 180,
	verify_uuid = true,
    minimum_played_time = 0,
	plugin = {
		welcome = [[Welcome to Official Server #1!
We ask you to be friendly towards other players.
If you have questions or want to chat about this game, feel free to join our server on Discord (Settings - Links)]],
		difficulty = "standard"
	}
}

return M
