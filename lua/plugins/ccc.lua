return {
  "uga-rosa/ccc.nvim",
  lazy = true,
  config = function()
    require("ccc").setup()
  end,
  keys = {
    {
      "<leader>c3h",
      "<cmd>CccHighlighterToggle<cr>",
      desc = "ccc Highlighter Toggle",
    },
  },
}
