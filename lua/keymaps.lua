-- key maps
--
-- ! mapleader: init.lua:15

-- vim stuff
local setKey = vim.keymap.set

setKey("n", "<leader>w", ":w<CR>", {})
setKey("n", "<leader>x", ":x<CR>", {})
setKey("n", "<leader>q", ":q<CR>", {})
setKey("n", "<leader>h", ":noh<CR>", {})
setKey("n", "Q", "<c-v>", {})
setKey({ "n", "x" }, "j", function()
  if vim.v.count > 0 then
    return "j"
  else
    return "gj"
  end
end, { noremap = true, expr = true })
setKey({ "n", "x" }, "k", function()
  if vim.v.count > 0 then
    return "k"
  else
    return "gk"
  end
end, { noremap = true, expr = true })

setKey("n", "<leader>bn", ":bn<CR>", {})
setKey("n", "<leader>bp", ":bp<CR>", {})
setKey("n", "<leader>bd", ":bd<CR>", {})

setKey("n", "<leader>rp", function()
  vim.cmd [[ lua require'toggleterm'.exec("py '" .. vim.fn.expand("%") .. "'", 2) ]]
end, { noremap =  true })
setKey("n", "<leader>rip", function()
  vim.cmd [[ lua require'toggleterm'.exec("py -i '" .. vim.fn.expand("%") .. "'", 2) ]]
end, { noremap =  true })

-- vim, lspconfig
setKey("n", "K", vim.lsp.buf.hover, {})
setKey("n", "gd", vim.lsp.buf.definition, {})
setKey({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- vim, none-ls
setKey("n", "<Leader>lf", vim.lsp.buf.format, {})

-- diy markdown
function MD_toggleCheckbox()
  local current_line = vim.api.nvim_get_current_line()
  if current_line.find(current_line, "- [ ]", 1, true) then
    vim.cmd([[s/-\s\[\s\]/- [X]/]])
    print("space")
  elseif current_line.find(current_line, "- [X]", 1, true) then
    vim.cmd([[s/-\s\[X\]/- [ ]/]])
    print("x")
  end
end

setKey("n", "<Leader>mx", MD_toggleCheckbox, { noremap = true })

-- terminals
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("t", "jk", [[<C-\><C-n>]])
