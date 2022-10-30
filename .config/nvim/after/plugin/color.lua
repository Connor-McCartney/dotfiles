local function Round(x)
    return math.floor(x+0.5)
end

local function HSV2RGB (h, s, v)
        local k1 = v*(1-s)
        local k2 = v - k1
        local r = math.min (math.max (3*math.abs (((h       )/180)%2-1)-1, 0), 1)
        local g = math.min (math.max (3*math.abs (((h   -120)/180)%2-1)-1, 0), 1)
        local b = math.min (math.max (3*math.abs (((h   +120)/180)%2-1)-1, 0), 1)
    r = Round((k1 + k2*r) * 255)
    g = Round((k1 + k2*g) * 255)
    b = Round((k1 + k2*b) * 255)
    local hexstr = string.format("#%02x%02x%02x", r, g, b)
    return hexstr
end

-- https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt
vim.g.sonokai_transparent_background = false
vim.g.sonokai_disable_italic_comment = true

vim.cmd("let g:sonokai_colors_override = {" ..
string.format("'orange': ['%s', '215'],", HSV2RGB(20 , 0.40, 0.90)) .. --orange   
string.format("'green':  ['%s', '107'],", HSV2RGB(140, 0.40, 0.90)) .. --green   
string.format("'red':    ['%s', '176'],", HSV2RGB(180, 0.40, 0.90)) .. --aqua    
string.format("'blue':   ['%s', '110'],", HSV2RGB(220, 0.40, 0.90)) .. --blue          
string.format("'purple': ['%s', '203'],", HSV2RGB(260, 0.40, 0.90)) .. --purple  
string.format("'yellow': ['%s', '179'],", HSV2RGB(300, 0.40, 0.90)) .. --pink    
string.format("'bg0':    ['%s', '235'],", HSV2RGB(221, 0.25, 0.25)) .. --grey  #303540
string.format("'fg':     ['%s', '250']}", HSV2RGB(0  , 0.00, 0.90)))   --white #e6e6e6

--vim.cmd("let g:sonokai_colors_override = {}")
vim.cmd("colorscheme sonokai")
