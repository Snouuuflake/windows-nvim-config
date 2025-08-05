return {
  "allaman/emoji.nvim",
  version = "1.0.0", -- optionally pin to a tag
  dependencies = {
    -- util for handling paths
    "nvim-lua/plenary.nvim",
  },
  opts = {},
  config = function(_, opts)
    require("emoji").setup(opts)
    vim.api.nvim_create_user_command("Emoji", function()
      require("emoji").insert()
    end, {})
  end,
}
