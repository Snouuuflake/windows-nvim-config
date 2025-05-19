local M = {}

function M.MakeLocalMapper(mode, prefix, options)
	return function(suffix, command, opts)
    local commandf
		if type(command) == "string" then
			commandf = function()
				vim.cmd(command)
			end
    else 
      commandf = command
		end

		vim.keymap.set(mode, "<Leader>" .. prefix .. suffix, commandf, (opts ~= nil) and opts or options)
	end
end

return M
