local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 8 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 8 -- 4 spaces for indent width
opt.expandtab = false -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- cursor line
opt.cursorline = false -- do not highlight the current cursor line

-- appearance
opt.termguicolors = false
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.hlsearch = false
-- opt.colorcolumn = "100" -- show sign column so that text doesn't shift

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- redundancy
opt.undofile = true --  keep undo history between sessions
opt.undodir = os.getenv("HOME") .. "/./vim/undodir" -- keep undo files out of file dir
opt.swapfile = false -- disable swap files
opt.backup = false -- disable backup files

-- vim.cmd("set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<")
-- vim.cmd("set list")
opt.fillchars = {eob = " "}

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
