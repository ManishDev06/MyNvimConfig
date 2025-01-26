return {
	"nvim-lualine/lualine.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local conditions = {
			buffer_not_empty = function()
				return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
			end,

			hide_in_width = function()
				return vim.fn.winwidth(0) > 80
			end,

			check_git_workspace = function()
				local filepath = vim.fn.expand("%:p:h")
				local gitdir = vim.fn.finddir(".git", filepath .. ";")
				return gitdir and #gitdir > 0 and #gitdir < #filepath
			end,

			hide_in_nvimtree = function()
				return vim.bo.filetype == "NvimTree"
			end,
		}

		local lsp = function()
			local msg = "NONE"
			local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
			local clients = vim.lsp.get_clients()
			if next(clients) == nil then
				return msg
			end
			for _, client in ipairs(clients) do
				local filetypes = client.config.filetypes
				if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
					return client.name
				end
			end
			return msg
		end

		require("lualine").setup({
			options = {
				component_separators = "",
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						function()
							return ""
						end,
						padding = { left = 1, right = 0 },
					},
					{ "mode" },
				},
				lualine_b = {
					{
						"branch",
						icon = "",
					},
				},
				lualine_c = {
					{
						"progress",
						padding = { left = 1, right = 0 },
					},
					{
						"location",
						padding = { left = 0, right = 0 },
					},
					"%=",
					{
						lsp,
						icon = " LSP:",
					},
				},
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = { error = " ", warn = " ", info = " " },
					},
				},
				lualine_y = {
					{
						"filetype",
						cond = function()
							return not conditions.hide_in_nvimtree() and conditions.buffer_not_empty()
						end,
						icon_only = true,
						padding = { left = 1, right = 0 },
					},
					{
						"filename",
						cond = function()
							return not conditions.hide_in_nvimtree() and conditions.buffer_not_empty()
						end,
						symbols = {
							modified = "",
							readonly = "",
							unnamed = "[Untitled]",
							newfile = "[New]",
						},
						padding = { left = 0, right = 1 },
					},
				},
				lualine_z = {
					{
						function()
							return vim.fn.fnamemodify(vim.fn.expand("%:p:h"), ":t")
						end,
						icon = "",
					},
				},
			},
		})
	end,
}
