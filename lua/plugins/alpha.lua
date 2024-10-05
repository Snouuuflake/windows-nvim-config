return {
	"goolord/alpha-nvim",
	config = function()
		local lyrics = {
			{
				"Look at the Sky I’m Still Here; I’ll be Alive Next Year",
			},
			{
				"Do you see how you’ve grown? Don’t be sorry then",
			},
			{
				"Don't think of the time that's left,",
				"  you're spending it in your head   ",
			},
			{
				"But don't you waste the suffering you've faced,",
				"         it will serve you in due time         ",
			},
			{
				"Maybe it's a gift that I couldn't recognize.",
				"             Trying to feel alive           ",
			},
			{
				"Thaw your hands now, Put color in your cheeks",
			},
			{
				"Just face your fears and become your heroes.",
				"I don't understand why you're freaking out. ",
			},
		}

		local artsize = 21

		local getLyric = function()
			math.randomseed(os.time())
			local chosenLyric = lyrics[math.random(1, #lyrics)]

			if #chosenLyric == 1 then
				return { "[ " .. chosenLyric[1] .. " ]" }
			else
				local res = { "┌ " .. chosenLyric[1]:gsub(".", " ") .. " ┐" }
				for i = 1, #chosenLyric do
					table.insert(res, "│ " .. chosenLyric[i] .. " │")
				end
				table.insert(res, "└ " .. string.gsub(chosenLyric[1], ".", " ") .. " ┘")
				return res
			end
		end

		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.opts = { hl = "@text.title1", position = "center" }
		local header = {
			[[ _ " _             ]],
			[[(_\|/_)            ]],
			[[ (/|\)    ╱|、     ]],
			[[         (˚ˎ。7    ]],
			[[         |、˜〵    ]],
			[[         じしˍ,)ノ ]],
			[[                   ]],
		}

		local resLyric = getLyric()

		while string.len(resLyric[1]) > artsize do
			for i = 1, #header do
				header[i] = " " .. header[i]
			end
			artsize = artsize + 2
		end

		for _, v in ipairs(resLyric) do
			table.insert(header, v)
		end
		dashboard.section.header.val = header

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":enew <BAR> startinsert <CR>"),
			dashboard.button("SPC f f", "󰈞  Find file"),
			dashboard.button("SPC f o", "󰊄  Recently opened files"),
			dashboard.button("SPC f g", "󰈬  Find word"),
		}
		alpha.setup(dashboard.opts)
	end,
}
