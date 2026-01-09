return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
      ╱|、         
     (˚ˎ 。7       
     |、˜〵        
     じしˍ,)ノ୨୧   
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
        },
      },
    },
  },
}
