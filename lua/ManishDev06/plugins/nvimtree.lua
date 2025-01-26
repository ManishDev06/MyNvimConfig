return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-tree").setup({
			view = {
				float = {
					enable = true,
					open_win_config = {
						relative = "editor",
						border = "rounded",
						width = 30,
						height = 30,
						row = 0,
						col = 0,
					},
				},
			},
			sort = {
				sorter = "case_sensitive",
			},
			renderer = {
				group_empty = true,
				indent_markers = {
					icons = {
						corner = "│",
					},
					enable = true,
				}
			},
			filters = {
				dotfiles = true,
			},
		})

		vim.keymap.set("n", "\\", ":NvimTreeToggle <CR>", { desc = "[\\] Toggle NvimTree", silent = true })
	end,
}
