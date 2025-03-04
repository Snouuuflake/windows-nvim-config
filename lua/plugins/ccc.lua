return {
  "uga-rosa/ccc.nvim",
  config = function()

    local nmap = require("lib").MakeLocalMapper("n", "c3", { noremap = true })

    nmap("p", "CccPick")
    nmap("h", "CccHighlighterToggle")

    require("ccc").setup()
  end,
}
