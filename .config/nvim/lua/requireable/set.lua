--indentation
vim.opt.tabstop = 4
vim.softtapstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true 
vim.opt.guicursor = ""        --match terminal cursor
vim.opt.nu = true             --line numbers
vim.opt.mouse = "a"           --mouse support
vim.opt.hlsearch = false      --disable search highlighting
vim.opt.wrap = false          --disable line wrapping
vim.opt.scrolloff = 10        --line from top/bottom until scrolling

vim.api.nvim_command([[
autocmd BufRead,BufNewFile *.sage setfiletype python
]])
