return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        -- theme = "miasma",
        -- component_separators = { left = "", right = "" },
        -- section_separators = { left = "", right = "" },
        component_separators = { left = "|", right = "|" },
        section_separators = { left = " ", right = " " },
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            -- separator = { left = "", right = "" },
            separator = { left = " ", right = " " },
            right_padding = 2,
            symbols = { alternate_file = "" },
          },
        },
        lualine_z = {
          'tabs'
        }
      },
    })
  end,
}
