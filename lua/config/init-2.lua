if vim.g.colors_name == [[oxocarbon]] then
  local palette = require("oxocarbon").oxocarbon
  -- base11 #33b1ff
  -- base10 #ee5396
  -- base12 #ff7eb6
  -- base05 #f2f2f2
  -- base07 #08bdba
  -- base04 #d0d0d0
  -- base03 #525252
  -- base02 #393939
  -- none NONE
  -- base09 #78a9ff
  -- base06 #ffffff
  -- base08 #3ddbd9
  -- base00 #161616
  -- base15 #82cfff
  -- base01 #262626
  -- base13 #42be65
  -- blend #131313
  -- base14 #be95ff
  --
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "WinSeparator", { link = "TelescopeBorder" })
  vim.api.nvim_set_hl(0, "Substitute", { link = "Visual" })
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = palette.base10, fg = palette.base05 })
end
