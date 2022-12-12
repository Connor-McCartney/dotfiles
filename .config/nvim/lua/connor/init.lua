require('connor.set')
require('connor.packer')
local Remap = require('connor.keymap')
local vnoremap = Remap.vnoremap

-- MOVES LINES UP/DOWN KEYMAP
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- have same cursor position for ctrl-u and ctrl-d
vnoremap("<C-d>", "<C-d>zz")
vnoremap("<C-u>", "<C-u>zz")

-- LSP
require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
lspconfig['sumneko_lua'].setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use'},
      },
    },
  },
}

lspconfig['pyright'].setup {capabilities = capabilities}
lspconfig['gopls'].setup {capabilities = capabilities}
lspconfig['ltex'].setup {capabilities = capabilities}
lspconfig['rust_analyzer'].setup {capabilities = capabilities}


-- nvim-cmp
local cmp = require'cmp'
cmp.setup({
snippet = {
   expand = function(args)
     require('luasnip').lsp_expand(args.body)
   end,
},
  mapping = {
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})
