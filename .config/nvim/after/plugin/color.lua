-- https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt
vim.g.sonokai_transparent_background = false
vim.g.sonokai_disable_italic_comment = true
vim.g.sonokai_style = 'atlantis'

vim.cmd("let g:sonokai_colors_override = {" ..  --  | H%|  | S%|  | V%|
"'blue':   ['#00aaff', '110']," .. --blue            200    100    100
"'purple': ['#9580ff', '203']," .. --purple          250    50     100
"'red':    ['#66ffff', '176']," .. --aqua            180    60     100
"'yellow': ['#ff66cc', '179']," .. --pink            320    60     100
"'green':  ['#66ff66', '107']," .. --green           120    60     100
"'bg0':    ['#2a2f38', '235']," .. --grey
"'fg':     ['#e6e6e6', '250']"  .. --white
"}")


vim.cmd("colorscheme sonokai")
