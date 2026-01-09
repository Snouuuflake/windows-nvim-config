return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
┏━━━━━━━━━━━━━━━━┓            
┃#include <stdio.┃            
┃#include <string┃            
┃                ┃            
┃int main(int arg┃            
┃  FILE *f_ptr;  ┃   ╱|、     
┗━━━━━━━━━━━━━━━━┛  (˚ˎ。7    
                    |、˜〵    
                    じしˍ,)ノ 
                              
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
        },
      },
    },
  },
}
