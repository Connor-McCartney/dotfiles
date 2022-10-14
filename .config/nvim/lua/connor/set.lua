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

-- disable history popup
vim.cmd("nnoremap q: <nop>")

-- auto-compile LaTeX
vim.cmd([[
augroup latex
    autocmd BufEnter *.tex VimtexCompile
augroup en
]])
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
vim.g.vimtex_view_general_viewer = 'okular'
