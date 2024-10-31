return {
  "folke/twilight.nvim",
  config = function()
    Twilight = false
    function ToggleTwilight()
      if Twilight then
        vim.cmd("TwilightDisable")
        Twilight = false
      else
        vim.cmd("TwilightEnable")
        Twilight = true
      end
    end
    vim.keymap.set("n", "<Leader>tt", ToggleTwilight, { noremap = true })
  end
}
