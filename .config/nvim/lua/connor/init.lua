require('connor.set')
require('connor.packer')
require('connor.remap')

require('nvim-treesitter.configs').setup {
  highlight = {
    -- :TSUpdate
    -- :TSInstallInfo
    -- :TSInstall python rust c cpp javascript typescript html css cmake dockerfile lua 
    
    enable = {'python'},
  },
}
