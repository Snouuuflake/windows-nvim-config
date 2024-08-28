return {
	{
		"comfysage/evergarden",
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
		config = function()
			require("evergarden").setup({
				transparent_background = false,
				contrast_dark = "hard", -- 'hard'|'medium'|'soft'
				overrides = {
					CursorLineNr = {
						{ "#B2C98F", 2 }, -- GUI color and cterm color for 'fg'
						{ "#1A2024", 0 }, -- GUI color for 'bg'
					},
					LineNr = {
						{ "#859289", 15 },
						{ "#242B2E", 0 },
					},
				},
			})
		end,
	},
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
	},
}
