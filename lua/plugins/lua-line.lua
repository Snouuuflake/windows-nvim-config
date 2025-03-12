return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        -- theme="gruvbox_dark",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = " ", right = " " },
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            separator = { left = " ", right = " " },
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
