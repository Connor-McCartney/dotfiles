return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  use 'petRUShka/vim-sage'

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
end)
