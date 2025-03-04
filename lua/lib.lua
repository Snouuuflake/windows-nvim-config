local M = {}

function M.MakeLocalMapper(mode, prefix, options)
  return function(suffix, command, opts)
    vim.keymap.set(mode, "<Leader>" .. prefix .. suffix, function()
      vim.cmd(command)
    end, (opts ~= nil) and opts or options)
  end
end

return M
