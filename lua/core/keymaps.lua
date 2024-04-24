-- set leader key to space
vim.g.mapleader = " "
-- set scrolloff
vim.o.scrolloff = 7

local keymap = vim.keymap
local cmd = vim.cmd

-- Russian language
cmd("set keymap=russian-jcukenwin")
cmd("set iminsert=0")
cmd("set imsearch=0")
cmd("set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- navigate windows
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugins

--nvim-tree
keymap.set("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
