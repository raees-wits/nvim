--return {
--  'neovim/nvim-lspconfig',
--  dependencies = { 'saghen/blink.cmp' },
--  config = function()
--    local lspconfig = require('lspconfig')
--
--    -- Basic setup for Python
--    lspconfig.pyright.setup({})
--
--    -- You can add other servers like:
--    -- lspconfig.lua_ls.setup({})
--  end,
--}
--

return {
    'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
}
