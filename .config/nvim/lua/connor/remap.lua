vim.g.mapleader = " "

-- MOVES LINES UP/DOWN KEYMAP
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- have same cursor position for ctrl-u and ctrl-d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- control c or yank copies to clipboard
vim.cmd("set clipboard^=unnamed,unnamedplus")
vim.keymap.set({"n", "v"}, "<C-c>", "\"+y")
