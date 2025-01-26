return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"                                                                    ",
					"       ████ ██████           █████      ██                    ",
					"      ███████████             █████                            ",
					"      █████████ ███████████████████ ███   ███████████  ",
					"     █████████  ███    █████████████ █████ ██████████████  ",
					"    █████████ ██████████ █████████ █████ █████ ████ █████  ",
					"  ███████████ ███    ███ █████████ █████ █████ ████ █████ ",
					" ██████  █████████████████████ ████ █████ █████ ████ ██████",
					"",
					"",
					"",
					"",
				},
				center = {
					{
						icon = " ",
						key = "f",
						desc = "Find File                             ",
						key_format = "%s",
						action = "Telescope find_files",
					},
					{
						icon = " ",
						key = "n",
						desc = "New File                              ",
						key_format = "%s",
						action = "ene | startinsert",
					},
					{
						icon = " ",
						key = "g",
						desc = "Find Text                             ",
						key_format = "%s",
						action = "Telescope live_grep",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files                          ",
						key_format = "%s",
						action = "Telescope oldfiles",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config                                ",
						key_format = "%s",
						action = 'lua require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })',
					},
					{
						icon = "󰒲 ",
						key = "l",
						desc = "Lazy                                  ",
						key_format = "%s",
						action = "Lazy",
					},
					{
						icon = " ",
						key = "q",
						desc = "Quit                                  ",
						key_format = "%s",
						action = "qa",
					},
				},
				vertical_center = true,
			},
		})
	end,
}

