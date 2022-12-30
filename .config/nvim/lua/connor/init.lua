require('connor.set')
require('connor.packer')
require('connor.remap')

require('nvim-treesitter.configs').setup {
  highlight = {
    -- :TSUpdate
    -- :TSInstall python
    enable = {'python'},
  },
}
