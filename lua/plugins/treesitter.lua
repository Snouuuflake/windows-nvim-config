return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local install = require 'nvim-treesitter.install'
    install.prefer_git = false
    install.compilers = {"clang"}
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enabled = true },
      indent = { enable = false },
    })
  end
}
