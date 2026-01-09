return {
  {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
    config = function() end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  {
    "topazape/oldtale.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldtale").setup({
        terminal_colors = true,
        styles = {
          comments = {},
          keywords = {},
          identifiers = {},
          functions = {},
          variables = {},
          booleans = {},
        },
        integrations = {
          blink = false,
          cmp = true,
          gitsigns = false,
          lazy = true,
          lsp = false,
          markdown = false,
          mason = true,
          noice = true,
          notify = true,
          octo = false,
          rainbow_delimiters = false,
          saga = false,
          snacks = true,
          telescope = true,
          treesitter = true,
        },
        highlight_overrides = {
          Boolean = { fg = "#d68abc" },
          ["@boolean"] = { fg = "#d68abc" },
          String = { fg = "#d68abc" },
          ["@string"] = { fg = "#d68abc" },
          Special = { fg = "#80a891" },
          Type = { fg = "#76a5aa" },
          ["@markup.heading.1.tsx"] = { fg = "#b4b1ba" },
          ["@markup.heading.2.tsx"] = { fg = "#b4b1ba" },
          ["@markup.heading.3.tsx"] = { fg = "#b4b1ba" },
          ["@markup.heading.4.tsx"] = { fg = "#b4b1ba" },
          ["@markup.heading.5.tsx"] = { fg = "#b4b1ba" },
          ["@lsp.type.namespace.typescriptreact"] = { fg = "#8cbcc0" },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldtale",
    },
  },
}
