-- lsp-config.lua

-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

require("lsp_signature").on_attach({
  bind = true,
  handler_opts = { border = "rounded" },
  floating_window = true,
  hint_enable = false,
  toggle_key = "<M-x>",  -- optional toggle keybinding
  extra_trigger_chars = { "(", "," },
}, bufnr)



-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
