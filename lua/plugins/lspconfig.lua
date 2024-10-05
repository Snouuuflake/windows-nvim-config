return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				PATH = "prepend",
			})
		end,
    opts = {
      ensure_installed = {
        "debugpy",
        "ruff",
        "pylsp"
      }
    }
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.ts_ls.setup({
				on_attach = on_attach,
				filetypes = {
					"typescript",
					"typescriptreact",
					"typescript.tsx",
					"javascript",
					"javascriptreact",
					"javascript.jsx",
				},
				capabilities = capabilities,
			})
			lspconfig.solargraph.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities,
			})
			lspconfig.julials.setup({
				capabilities = capabilities,
			})
		end,
	},
}
