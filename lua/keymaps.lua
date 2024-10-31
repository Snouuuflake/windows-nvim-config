-- key maps
--
-- ! mapleader: init.lua:15

-- vim stuff
local setKey = vim.keymap.set

setKey("n", "<leader>w", ":w<CR>", {})
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

setKey("i", "<c-h>", "<c-o>h", {})
setKey("i", "<c-j>", "<c-o>j", {})
setKey("i", "<c-k>", "<c-o>k", {})
setKey("i", "<c-l>", "<c-o>a", {})

setKey("n", "<leader>bn", ":bn<CR>", {})
setKey("n", "<leader>bp", ":bp<CR>", {})
setKey("n", "<leader>bd", ":bd<CR>", {})


-- neotree
setKey("n", "<leader>eo", ":Neotree filesystem reveal right<CR>")
setKey("n", "<leader>ec", ":Neotree close<CR>")
setKey("n", "<leader>ef", ":Neotree filesystem reveal float<CR>")

-- lspconfig
setKey("n", "K", vim.lsp.buf.hover, {})
setKey("n", "gd", vim.lsp.buf.definition, {})
setKey({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls
setKey("n", "<Leader>lf", vim.lsp.buf.format, {})

-- twilight
local twilight = false
function toggleTwilight()
  if twilight then
    vim.cmd("TwilightDisable")
    twilight = false
  else
    vim.cmd("TwilightEnable")
    twilight = true
  end
end

setKey("n", "<Leader>tt", toggleTwilight, { noremap = true })

-- venn.nvim
-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
  local venn_enabled = vim.inspect(vim.b.venn_enabled)
  if venn_enabled == "nil" then
    vim.b.venn_enabled = true
    vim.cmd([[setlocal ve=all]])
    -- draw a line on HJKL keystokes
    vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
    -- draw a box by pressing "f" with visual selection
    vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
  else
    vim.cmd([[setlocal ve=]])
    vim.api.nvim_buf_del_keymap(0, "n", "J")
    vim.api.nvim_buf_del_keymap(0, "n", "K")
    vim.api.nvim_buf_del_keymap(0, "n", "L")
    vim.api.nvim_buf_del_keymap(0, "n", "H")
    vim.api.nvim_buf_del_keymap(0, "v", "f")
    vim.b.venn_enabled = nil
  end
end

-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap("n", "<leader>v", ":lua Toggle_venn()<CR>", { noremap = true })

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

-- dap
-- setKey("n", [[<Leader>dpr]], function()
--   require("dap-python").test_method()
-- end)

-- local dap = require("dap")
-- local dapui = require("dap-ui")
