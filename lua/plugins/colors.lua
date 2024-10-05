return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
      vim.g.gruvbox_material_background = 'hard'
			vim.g.gruvbox_material_enable_italic = true
		end,
	},
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
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				custom_highlights = function(colors)
					return {
						String = { fg = colors.sapphire },
						Number = { fg = colors.sapphire },
					}
				end,
			})
		end,
	},
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
	},
}
