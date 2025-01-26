local o = vim.opt

-- Enable line numbers
o.number = true

-- Disable mode display
o.showmode = false

-- Enable persistent undo
o.undofile = true

-- Use system clipboard
o.clipboard = "unnamedplus"

-- Case-insensitive search
o.ignorecase = true
o.smartcase = true

-- Always show sign column
o.signcolumn = "yes"

-- Reduce update time
o.updatetime = 250

-- Set timeout for mappings
o.timeoutlen = 300

-- Split windows to the right and below
o.splitright = true
o.splitbelow = true

-- Show special characters
o.list = true
o.listchars = { tab = "│ ", nbsp = "␣" }

-- Replace end-of-buffer with spaces
o.fillchars = { eob = " " }

-- Highlight current line
o.cursorline = true

-- Keep space around cursor when scrolling
o.scrolloff = 10
o.sidescrolloff = 5

-- Set tab width and indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

-- Disable swap files
o.swapfile = false

-- Enable true color support
o.termguicolors = true

-- Set UTF-8 encoding
o.fileencoding = "utf-8"

-- Allow backspace over indentation, EOL, and start of insert mode
o.backspace = "indent,eol,start"

-- Disable line wrapping
o.wrap = false

