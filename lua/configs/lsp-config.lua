
-- Mason manages LSP servers -----------------------------------------
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'clangd'},
  handlers = {
    function(server)
      -- default handler for all servers
      vim.lsp.config[server].setup({})
    end,

    -- per-server overrides
    lua_ls = function()
      vim.lsp.config.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
            workspace   = { checkThirdParty = false },
          },
        },
      })
    end,
  },
})

-- Signature help popup ----------------------------------------------
require('lsp_signature').on_attach({
  bind = true,
  handler_opts = { border = 'rounded' },
  floating_window = true,
  hint_enable = true,
  toggle_key = '<M-x>',
  extra_trigger_chars = { '(', ',' },
})

-- Diagnostics styling -----------------------------------------------
vim.diagnostic.config({
  virtual_text = { severity = vim.diagnostic.severity.ERROR },
  signs        = { severity = vim.diagnostic.severity.ERROR },
  underline    = { severity = vim.diagnostic.severity.ERROR },
  update_in_insert = false,
  severity_sort = true,
})
