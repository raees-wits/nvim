require("ayu").setup({
	mirage = true,
	overrides = {
		Normal = {bg = "#251D2F"},
		LineNr = { fg = "gray" },
		CursorLineNr = { fg = "#f28779" },
	}
})
vim.cmd("colorscheme ayu-mirage")
