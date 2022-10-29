-- https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt
vim.g.sonokai_transparent_background = false
vim.g.sonokai_disable_italic_comment = true
vim.g.sonokai_style = 'atlantis'

vim.cmd("let g:sonokai_colors_override = {" ..
"'blue':   ['#ba9cf3', '110']," .. --purple  
"'purple': ['#0096FF', '203']," .. --blue
"'red':    ['#7DF9FF', '176']," .. --aqua
"'yellow': ['#f56cc7', '179']," .. --pink
"'green':  ['#19e32d', '107']," .. --green
"'bg0':    ['#2A2F38', '235']," .. --grey
"'fg':     ['#e1e3e4', '250']"  .. --white
"}") 

vim.cmd("colorscheme sonokai")
