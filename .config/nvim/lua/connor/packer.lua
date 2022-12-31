return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  use 'petRUShka/vim-sage'

  use 'neovim/nvim-lspconfig'
  use 'VonHeikemen/lsp-zero.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
    
  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'lervag/vimtex'
end)

