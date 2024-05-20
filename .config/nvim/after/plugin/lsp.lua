local lsp = require("lsp-zero")

require("mason").setup({
    PATH = "prepend", -- "skip" seems to cause the spawning error
})

lsp.preset("recommended")

-- deprecated, use :MasonInstall 
--lsp.ensure_installed({
--  'pyright',
--  'ltex',
--  'lua_ls',
--  'rust_analyzer',
--})


-- deprecated
-- Fix Undefined global 'vim'
--lsp.configure('lua_ls', {
--    settings = {
--        Lua = {
--            diagnostics = {
--                globals = { 'vim' }
--            }
--        }
--    }
--})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})


-----------------------------

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-o>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
})

cmp.setup({
    -- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt
    mapping = cmp_mappings,
    experimental = { ghost_text = true },
    sources = cmp.config.sources({
        { name = 'nvim_lsp', keyword_length = 2},
        { name = 'buffer', keyword_length = 2},
    }),
})
