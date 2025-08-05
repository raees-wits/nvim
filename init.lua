require("configs.lazy")
require("configs.ayumirage")
--require("configs.dark-charcoal")
require("configs.setup")
require("configs.keymaps")
require("configs.lsp-config")
--require("congfig.autocmd")


vim.filetype.add({
  extension = {
    vs = "glsl",
    fs = "glsl",
	vert = "glsl",
	frag = "glsl",
  }
})
vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR, -- only show errors inline
  },
  signs = {
    severity = vim.diagnostic.severity.ERROR, -- only signs for errors
  },
  underline = {
    severity = vim.diagnostic.severity.ERROR, -- underline only errors
  },
  update_in_insert = false,
  severity_sort = true,
})

