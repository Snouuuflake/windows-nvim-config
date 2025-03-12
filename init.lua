local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "


if not vim.g.vscode then
	require("lazy").setup({
		spec = { { import = "plugins" } },
		install = { colorscheme = { "flexoki" } },
    ui = {
      border = "single",
      title = "lazy.nvim",
      title_pos = "left"
    }
	})
require("vim-options")
end

require("keymaps")

vim.cmd([[ source C:\Files on disk\Remote\MSS-REAL\mss.vim ]])
