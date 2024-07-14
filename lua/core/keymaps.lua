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
keymap.set("n", "<leader>tt", ":NvimTreeFindFileToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

--telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader><leader>', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

on_attach = function(_, _)
  keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  keymap.set('n', 'gr', builtin.lsp_references, {})
  keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Go
keymap.set('n', '<leader>rg', ':update<bar>!go run .<CR>')
-- Make run
keymap.set('n', '<leader>mr', ':update<bar>!make run .<CR>')

vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)

vim.keymap.set("n", "\\", "<cmd>Compile ./build.sh<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>E", "<cmd>Oil --float<CR>")
