return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
	},

	config = function()
		require("telescope").setup({
			-- defaults = {
			--   mappings = {
			--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
			--   },
			-- },
			-- pickers = {}
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[H] Search Help" })
		vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[K] Search Keymaps" })
		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[F] Search Files" })
		vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S] Search Select Telescope" })
		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[W] Search current Word" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[G] Search by Grep" })
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[D] Search Diagnostics" })
		vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[R] Search Resume" })
		vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = "[.] Search Recent Files" })
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		vim.keymap.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })

		vim.keymap.set("n", "<leader>s/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[/] Search in Open Files" })

		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S] Search Neovim files" })
	end,
}
