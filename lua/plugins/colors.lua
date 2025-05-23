return {
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa-paper").setup({
        overrides = function(colors)
          return {
            -- TelescopePreviewBorder = { fg = colors.theme.ui.bg },
            TelescopeBorder = { fg = colors.theme.ui.bg, bg = colors.theme.ui.bg },
            TelescopeResultsBorder = {
              fg = colors.theme.ui.bg,
              bg = colors.theme.ui.bg,
            },
            TelescopeResultsNormal = {
              fg = colors.theme.ui.fg,
              bg = colors.theme.ui.bg,
            },
            TelescopePromptBorder = {
              fg = colors.theme.ui.bg,
              bg = colors.theme.ui.bg,
            },
            TelescopePreviewBorder = {
              fg = colors.theme.ui.bg_p1,
              bg = colors.theme.ui.bg_p1,
            },
            TelescopePreviewNormal = {
              bg = colors.theme.ui.bg_p1,
            },
            TelescopePromptNormal = {
              fg = colors.theme.ui.fg,
              bg = colors.theme.ui.bg,
            },
            WinSeparator = {
              fg = colors.theme.ui.bg_dim,
              bg = colors.theme.ui.bg_dim,
            },
            ToggleTermNormal = {
              bg = colors.theme.ui.bg_dim,
            },
          }
        end,
      })
    end,
  },
  {
    "nuvic/flexoki-nvim",
    name = "flexoki",
    config = function()
      require("flexoki").setup({
        highlight_groups = {
          htmlBold = { fg = "blue_one" },
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        -- palette_overrides = {
        -- 	dark0_hard       = "#1d2021",
        -- 	dark0            = "#282828",
        -- 	dark0_soft       = "#32302f",
        -- 	dark1            = "#3c3836",
        -- 	dark2            = "#504945",
        -- 	dark3            = "#665c54",
        -- 	dark4            = "#7c6f64",
        -- 	light0_hard      = "#f9f5d7",
        -- 	light0           = "#fbf1c7",
        -- 	light0_soft      = "#f2e5bc",
        -- 	light1           = "#f6e8c0",
        -- 	light2           = "#d5c4a1",
        -- 	light3           = "#bdae93",
        -- 	light4           = "#a89984",
        -- 	dark_aqua        = "#49503b",
        -- 	faded_aqua       = "#427b58",
        -- 	light_aqua       = "#e8e5b5",
        -- 	bright_aqua      = "#8dd77e",
        -- 	neutral_aqua     = "#689d6a",
        -- 	faded_blue       = "#076678",
        -- 	bright_blue      = "#74bbc3",
        -- 	neutral_blue     = "#458588",
        -- 	dark_green       = "#42693e",
        -- 	faded_green      = "#386621",
        -- 	light_green      = "#b2d7ae",
        -- 	bright_green     = "#7bb975",
        -- 	neutral_green    = "#659b5e",
        -- 	dark_red_hard    = "#792329",
        -- 	dark_aqua_hard   = "#34493d",
        -- 	light_red_hard   = "#fc9690",
        -- 	dark_green_hard  = "#5a633a",
        -- 	light_aqua_hard  = "#e6e9c1",
        -- 	light_green_hard = "#d3d6a5",
        -- 	faded_orange     = "#af3a03",
        -- 	bright_orange    = "#d37c98",
        -- 	neutral_orange   = "#c56b98",
        -- 	faded_purple     = "#8f3f71",
        -- 	bright_purple    = "#ed6c90",
        -- 	neutral_purple   = "#b97393",
        -- 	dark_red         = "#722529",
        -- 	faded_red        = "#9d0006",
        -- 	light_red        = "#fc9487",
        -- 	bright_red       = "#fb4934",
        -- 	neutral_red      = "#cc241d",
        -- 	dark_red_soft    = "#7b2c2f",
        -- 	dark_aqua_soft   = "#425749",
        -- 	light_red_soft   = "#f78b7f",
        -- 	dark_green_soft  = "#466d43",
        -- 	light_aqua_soft  = "#ace1b9",
        -- 	light_green_soft = "#99ce94",
        -- 	faded_yellow     = "#b57614",
        -- 	bright_yellow    = "#fabd2f",
        -- 	neutral_yellow   = "#d79921",
        -- 	gray             = "#928374",
        --
        -- 	-- bright_green  = "#83b665",
        -- 	-- neutral_green = "#a9b665",
        -- 	-- bright_blue   = "#76a8b2",
        -- },
        palette_overrides = false
            and {
              -- dark0_hard       = "#05171f",
              -- dark0            = "#16303a",
              -- dark0_soft       = "#213740",
              -- dark1            = "#28404a",
              -- dark2            = "#3c5059",
              -- dark3            = "#546166",
              -- dark4            = "#64757c",
              dark0_hard = "#09101b",
              dark0 = "#202630",
              dark0_soft = "#272f3a",
              dark1 = "#2e3744",
              dark2 = "#3c4859",
              dark3 = "#545b66",
              dark4 = "#646e7c",
              light0_hard = "#f9f5d7",
              light0 = "#fbf1c7",
              light0_soft = "#f2e5bc",
              light1 = "#f6e8c0",
              light2 = "#d5c4a1",
              light3 = "#bdae93",
              light4 = "#a89984",
              dark_aqua = "#aaaab6",
              faded_aqua = "#aaaab6",
              light_aqua = "#aaaab6",
              bright_aqua = "#aaaab6",
              neutral_aqua = "#aaaab6",
              faded_blue = "#076678",
              bright_blue = "#6e91af",
              neutral_blue = "#6e91af",
              dark_green = "#42693e",
              faded_green = "#386621",
              light_green = "#66996a",
              bright_green = "#66996a",
              neutral_green = "#66996a",
              dark_red_hard = "#792329",
              dark_aqua_hard = "#aaaab6",
              light_red_hard = "#fc9690",
              dark_green_hard = "#59a67d",
              light_aqua_hard = "#aaaab6",
              light_green_hard = "#b2d7ae",
              faded_orange = "#af3a03",
              bright_orange = "#d099c0",
              neutral_orange = "#d099c0",
              faded_purple = "#8f3f71",
              bright_purple = "#ed6c90",
              neutral_purple = "#b97393",
              dark_red = "#722529",
              faded_red = "#9d0006",
              light_red = "#fc9487",
              bright_red = "#c29ecb",
              neutral_red = "#c29ecb",
              dark_red_soft = "#7b2c2f",
              dark_aqua_soft = "#425749",
              light_red_soft = "#b9adbc",
              dark_green_soft = "#466d43",
              light_aqua_soft = "#ace1b9",
              light_green_soft = "#99ce94",
              faded_yellow = "#498888",
              bright_yellow = "#a3c2c2",
              neutral_yellow = "#5fa5a5",
              gray = "#928374",

              -- bright_green  = "#83b665",
              -- neutral_green = "#a9b665",
              -- bright_blue   = "#76a8b2",
            }
            or {
              dark_green = "#42693e",
              faded_green = "#386621",
              light_green = "#78a938",
              bright_green = "#78a938",
              neutral_green = "#78a938",
              dark_green_hard = "#498866",
              light_green_hard = "#b2d7ae",
              dark_green_soft = "#466d43",
              light_green_soft = "#99ce94",
            },
      })
      local palette = require("gruvbox").palette
      vim.cmd([[hi! Purple guifg=]] .. palette.bright_purple)
      vim.cmd([[hi! Blue guifg=]] .. palette.bright_blue)
      vim.cmd([[hi! CursorLineNr guibg=]] .. palette.bright_blue .. [[ guifg=]] .. palette.light0)
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        custom_highlights = function(colors)
          return {
            String = { fg = colors.sapphire },
            Number = { fg = colors.sapphire },
          }
        end,
      })
    end,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
}
