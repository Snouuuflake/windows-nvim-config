vim.cmd("set termguicolors")
vim.cmd.colorscheme("gruvbox")
vim.opt.fillchars = { eob = " " }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.list = true
vim.opt.listchars = [[tab:  ,eol:󰽺,extends:⟩,precedes:⟨]]


vim.cmd("hi TelescopeBorder guibg=NONE")
vim.cmd("hi TelescopePromptBorder guibg=NONE")
vim.cmd("hi TelescopePromptPrefix guibg=NONE")

-- Fixing neotree hilights on init. !! Must be duplicated in the mySetup function for the theme
if vim.g.colors_name == "gruvbox-material" then
	local colors = require("gruvbox-material.colors").get(vim.o.background, "hard")
	vim.cmd([[hi! NeoTreeTitleBar guifg=]] .. colors.bg0 .. [[ guibg=]] .. colors.fg1)
	vim.cmd([[hi! NeoTreeFloatBorder guifg=]] .. colors.fg1 .. [[ guibg=None]])
end

if os.getenv("THEME") == "light" then
	vim.opt.background = "light"
end
