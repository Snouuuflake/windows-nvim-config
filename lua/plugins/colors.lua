return {
	{
		"ribru17/bamboo.nvim",
	},
	{
		"f4z3r/gruvbox-material.nvim",
		name = "gruvbox-material",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			local function mySetup(dark)
				local contrast = dark and "hard" or "soft"
				if dark then
					vim.cmd([[set background=dark]])
				else
					vim.cmd([[set background=light]])
				end

				local colors = require("gruvbox-material.colors").get(vim.o.background, contrast)
				require("gruvbox-material").setup({
					contrast = contrast,
					background = {
						transparent = dark,
					},
					customize = function(g, o) --- group: string, options: table
						if g == "Cursor" then
							o.fg = colors.blue
							o.reverse = false
						elseif g == "CursorLineNr" then
							o.bg = colors.blue
							o.fg = colors.bg0
						elseif g == "jsonKeyword" then
							o.link = nil
							o.fg = colors.blue
						elseif g == "Delimiter" then
							o.link = nil
							o.fg = colors.grey2
						elseif g == "Comment" then
							o.fg = colors.grey0
						end
						return o
					end,
				})
				vim.cmd([[hi! NeoTreeTitleBar guifg=]] .. colors.bg0 .. [[ guibg=]] .. colors.fg1)

				if dark then
					vim.cmd([[hi! NeoTreeFloatBorder guifg=]] .. colors.fg1 .. [[ guibg=]] .. "NONE")
				else
					vim.cmd([[hi! NeoTreeFloatBorder guifg=]] .. colors.fg1 .. [[ guibg=]] .. colors.bg0)
				end

				vim.cmd([[hi! lualine_c_normal guifg=#ddc7a1 guibg=#32302f]])
				vim.cmd([[hi! lualine_a_normal gui=bold guifg=#282828 guibg=#a89984]])
				vim.cmd([[hi! lualine_b_normal guifg=#ddc7a1 guibg=#504945]])
				vim.cmd([[hi! lualine_a_insert gui=bold guifg=#282828 guibg=#a9b665]])
				vim.cmd([[hi! lualine_a_visual gui=bold guifg=#282828 guibg=#ea6962]])
				vim.cmd([[hi! lualine_a_terminal gui=bold guifg=#282828 guibg=#d3869b]])
				vim.cmd([[hi! lualine_a_command gui=bold guifg=#282828 guibg=#7daea3]])
				vim.cmd([[hi! lualine_a_replace gui=bold guifg=#282828 guibg=#d8a657]])
				vim.cmd([[hi! lualine_a_inactive guifg=#ddc7a1 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_normal guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_insert guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_visual guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_replace guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_command guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_terminal guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_added_inactive guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_normal guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_insert guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_visual guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_replace guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_command guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_terminal guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_modified_inactive guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_normal guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_insert guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_visual guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_replace guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_command guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_terminal guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diff_removed_inactive guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_normal guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_insert guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_visual guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_replace guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_command guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_terminal guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_error_inactive guifg=#ea6962 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_normal guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_insert guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_visual guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_replace guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_command guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_terminal guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_warn_inactive guifg=#d8a657 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_normal guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_insert guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_visual guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_replace guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_command guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_terminal guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_info_inactive guifg=#7daea3 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_normal guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_insert guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_visual guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_replace guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_command guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_terminal guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! lualine_b_diagnostics_hint_inactive guifg=#a9b665 guibg=#504945]])
				vim.cmd([[hi! link lualine_z_tabs_active lualine_a_normal]])
				vim.cmd([[hi! link lualine_z_tabs_inactive lualine_a_inactive]])
				vim.cmd([[hi! link lualine_a_buffers_active lualine_a_normal]])
				vim.cmd([[hi! link lualine_a_buffers_inactive lualine_a_inactive]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_normal guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_insert guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_visual guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_replace guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_command guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_terminal guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconDefault_inactive guifg=#6d8086 guibg=#32302f]])
				vim.cmd([[hi! lualine_transitional_lualine_a_normal_to_lualine_b_normal guifg=#a89984 guibg=#504945]])
				vim.cmd([[hi! lualine_transitional_lualine_b_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]])
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_active_to_lualine_c_normal guifg=#a89984 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_z_tabs_active_to_lualine_c_normal guifg=#a89984 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_active_to_lualine_a_insert guifg=#a89984 guibg=#a9b665]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_insert_to_lualine_a_buffers_active guifg=#a9b665 guibg=#a89984]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_active_to_TabLineFill guifg=#a89984 guibg=#282828]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_inactive_to_TabLineFill guifg=#504945 guibg=#282828]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_inactive_to_lualine_a_buffers_active guifg=#504945 guibg=#a89984]]
				)
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_normal guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_insert guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_visual guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_replace guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_command guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_terminal guifg=#51a0cf guibg=#32302f]])
				vim.cmd([[hi! lualine_x_filetype_DevIconLua_inactive guifg=#51a0cf guibg=#32302f]])
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd([[hi! lualine_transitional_lualine_a_insert_to_lualine_b_normal guifg=#a9b665 guibg=#504945]])
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_modified_insert_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_removed_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_active_to_lualine_a_buffers_inactive guifg=#a89984 guibg=#504945]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_a_buffers_inactive_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_removed_insert_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_hint_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_hint_insert_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd([[hi! lualine_transitional_lualine_a_visual_to_lualine_b_normal guifg=#ea6962 guibg=#504945]])
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_modified_visual_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd([[hi! lualine_transitional_lualine_a_command_to_lualine_b_normal guifg=#7daea3 guibg=#504945]])
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_removed_command_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_error_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_error_insert_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_removed_visual_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_error_visual_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_warn_normal_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diagnostics_warn_insert_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
				vim.cmd(
					[[hi! lualine_transitional_lualine_b_diff_modified_command_to_lualine_c_normal guifg=#504945 guibg=#32302f]]
				)
			end

			mySetup(true)
			vim.keymap.set("n", "<leader>bgd", function()
				mySetup(true)
			end, { noremap = true })
			vim.keymap.set("n", "<leader>bgl", function()
				mySetup(false)
			end, { noremap = true })
		end,
	},
	-- {
	--   "sainnhe/gruvbox-material",
	--   lazy = false,
	--   priority = 1000,
	--   config = function()
	--     -- Optionally configure and load the colorscheme
	--     -- directly inside the plugin declaration.
	--     vim.g.gruvbox_material_background = "hard"
	--     vim.g.gruvbox_material_enable_italic = true
	--   end,
	-- },
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
