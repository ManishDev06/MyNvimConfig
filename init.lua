-- Set leader key to space
vim.g.mapleader = " "

 -- Set local leader key to space
vim.g.localmapleader = " "

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("ManishDev06.core.options")
require("ManishDev06.core.keymaps")
require("ManishDev06.core.autocmds")
require("lazy-setup")
