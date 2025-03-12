local M = {}

function M.MakeLocalMapper(mode, prefix, options)
	return function(suffix, command, opts)
		if type(command) == "string" then
			command = function()
				vim.cmd(command)
			end
		end

		vim.keymap.set(mode, "<Leader>" .. prefix .. suffix, command, (opts ~= nil) and opts or options)
	end
end

return M
