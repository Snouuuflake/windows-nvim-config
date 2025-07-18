return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣦⣄⡀⢀⣀⣤⣤⣄
⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣆⠀⠀⠀⠀⠀⠀⢀⣄⠙⢿⣿⣟⣿⣿⣿⣿⣿⠇
⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡀⠀⠀⠀⠀⢀⣿⣿⡇⠀⠈⢹⡏⠉⠉⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⡇⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⢸⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣷⣶⣶⣶⣷⣾⣿⣿⡀⠀⠀⢸⠃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠋⢉⠙⣿⣿⣿⣿⣿⠟⠛⢦⡀⣼⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠐⢒⣾⣿⣿⣷⡀⠛⢀⣿⣿⣿⣭⣿⣈⠛⣸⣧⣿⠤⠤⠀⠀⠀⠀
⠀⠀⠀⠠⠤⠒⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠤⠤⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠁⠀⠀⠀⠀⠈⠙⠻⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⡿⠋⢀⣠⣄⠀⠀⠶⠿⠦⠀⠰⠶⠹⣧⠀⠀⠀⠀
]],
--         header = [[
--                   ,                            
--                  \)\_                          
--                 /    '. .---._                 
--               =P ^     `      '.               
--                `--.       /     \              
--                .-'(       \      |             
--               (.-'   )-..__>   , ;             
--               (_.--``    (__.-/ /              
--                       .-.__.-'.'               
--                        '-...-'                 
-- ]],
       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         -- { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
         -- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
         -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
         -- { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         -- { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
         -- { icon = " ", key = "q", desc = "Quit", action = ":qa" },
       },
      },
      sections = {
        { section = "header" },
        -- {
        --   pane = 2,
        --   section = "terminal",
        --   cmd = "colorscript -e square",
        --   height = 5,
        --   padding = 1,
        -- },
        -- { section = "keys", gap = 1, padding = 1 },
        { pane = 1, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 1, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 1,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        -- { section = "startup" },
      },
    },
    terminal = {
      shell = "nu",
      win = {
        position = "float",
      },
      interactive = true,
      auto_close = true,
    },
  },
  keys = {
    {
      "<C-t>",
      mode = { "n", "t" },
      function()
        Snacks.terminal.toggle()
      end,
      desc = "Terminal",
    },
  },
}
