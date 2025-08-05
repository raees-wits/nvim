require("ayu").setup({
	mirage = true,
	overrides = {
		Normal = {bg = "#262626"},
		LineNr = { fg = "gray" },
		CursorLineNr = { fg = "#f28779" },
	}
})
vim.cmd("colorscheme ayu-mirage")
