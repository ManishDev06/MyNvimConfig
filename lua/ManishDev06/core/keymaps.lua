local opts = { noremap = true, silent = true }

-- Clear search highlight on Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "[ESC] Remove search highlight" })

-- Navigate between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "[CTRL H] Focus Left Window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "[CTRL L] Focus Right Window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "[CTRL J] Focus Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "[CTRL K] Focus Top Window" })

-- Quit file
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", vim.tbl_extend("force", opts, { desc = "[Q] Quit" }))

-- Delete character without copying to register
vim.keymap.set("n", "x", '"_x', vim.tbl_extend("force", opts, { desc = "[X] Delete" }))

-- Resize window
vim.keymap.set("n", "<Up>", ":resize -2<CR>", vim.tbl_extend("force", opts, { desc = "[Up] Resize window up" }))
vim.keymap.set("n", "<Down>", ":resize +2<CR>", vim.tbl_extend("force", opts, { desc = "[Down] Resize window down" }))
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", vim.tbl_extend("force", opts, { desc = "[Left] Resize window left" }))
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", vim.tbl_extend("force", opts, { desc = "[Right] Resize window right" }))

-- Buffer navigation
vim.keymap.set("n", "<leader>b<", ":bnext<CR>", vim.tbl_extend("force", opts, { desc = "[<] Next Buffer" }))
vim.keymap.set("n", "<leader>b>", ":bprevious<CR>", vim.tbl_extend("force", opts, { desc = "[>] Previous Buffer" }))
vim.keymap.set("n", "<leader>bx", ":bdelete!<CR>", vim.tbl_extend("force", opts, { desc = "[X] Close Buffer" }))
vim.keymap.set("n", "<leader>bn", "<cmd>enew<CR>", vim.tbl_extend("force", opts, { desc = "[N] New Buffer" }))

-- Window splits
vim.keymap.set("n", "<leader>wv", "<C-w>v", vim.tbl_extend("force", opts, { desc = "[V] Split Window Vertically" }))
vim.keymap.set("n", "<leader>wh", "<C-w>s", vim.tbl_extend("force", opts, { desc = "[H] Split Window Horizontally" }))

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", vim.tbl_extend("force", opts, { desc = "[N] New Tab" }))
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", vim.tbl_extend("force", opts, { desc = "[X] Close Tab" }))
vim.keymap.set("n", "<leader>t>", ":tabn<CR>", vim.tbl_extend("force", opts, { desc = "[>] Next Tab" }))
vim.keymap.set("n", "<leader>t<", ":tabp<CR>", vim.tbl_extend("force", opts, { desc = "[<] Previous Tab" }))

-- Indentation in visual mode
vim.keymap.set("v", "<", "<gv", vim.tbl_extend("force", opts, { desc = "[<] Decrease Indentation" }))
vim.keymap.set("v", ">", ">gv", vim.tbl_extend("force", opts, { desc = "[>] Increase Indentation" }))

-- Paste in visual mode
vim.keymap.set("v", "p", '"_dP', vim.tbl_extend("force", opts, { desc = "[P] Paste in Visual Mode" }))

-- Autopairs for brackets and quotes
vim.api.nvim_set_keymap("i", "(", "()<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "'", "''<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "\"", "\"\"<Left>", { noremap = true })

