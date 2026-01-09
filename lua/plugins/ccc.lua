return {
  "uga-rosa/ccc.nvim",
  lazy = false,
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
