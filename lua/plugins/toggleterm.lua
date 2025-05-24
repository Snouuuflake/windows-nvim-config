return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			hide_numbers = false,
			direction = "float",
			shell = "pwsh.exe",
			float_opts = {
				border = "none",
			},
      highlights = {
        Normal = {
          link = "ToggleTermNormal"
        },
        NormalFloat = {
          link = "ToggleTermNormal"
        }
      },
			shade_terminals = false,
		})
	end,
}
