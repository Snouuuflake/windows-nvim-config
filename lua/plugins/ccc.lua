return {
  "uga-rosa/ccc.nvim",
  config = function()
    require("ccc").setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })
  end,
  keys = {
    {
      [[<leader>c3p]],
      function()
        vim.cmd([[CccPick]])
      end,
      desc = "CCC Color picker",
    },
  },
}
