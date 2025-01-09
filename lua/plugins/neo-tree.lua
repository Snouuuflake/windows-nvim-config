return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		-- neotree
		vim.keymap.set("n", "<leader>eo", ":Neotree filesystem reveal right<CR>")
		vim.keymap.set("n", "<leader>ec", ":Neotree close<CR>")
		vim.keymap.set("n", "<leader>ef", ":Neotree filesystem reveal float<CR>")

		require("neo-tree").setup({
			event_handlers = {
				{
					event = "neo_tree_buffer_enter",
					handler = function()
						vim.opt_local.relativenumber = true
					end,
				},
			},
		})

	end,
}
