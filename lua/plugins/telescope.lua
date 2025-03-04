return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					layout_config = {
						horizontal = {
							preview_cutoff = 0,
						},
					},
				},
			})
			local nmap = require("lib").MakeLocalMapper("m", "f", { noremap = true })
			-- telescope
			local builtin = require("telescope.builtin")
			nmap("f", builtin.find_files)
			nmap("g", builtin.live_grep)
			nmap("o", builtin.oldfiles)
			nmap("b", builtin.buffers)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
