-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement --
keymap.set("n", "+", "<c-a>")
keymap.set("n", "-", "<c-x>")

-- Select all --
keymap.set("n", "<c-a>", "gg<s-v>G")

-- Jumplist --
keymap.set("n", "c-m", "c-i", opts)
-- New tab --
keymap.set("n", "te", ":tabedit<space>", opts)
keymap.set("n", "<tab>", ":tabnext<return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<return>", opts)
-- Close tab --
keymap.set("n", "sq", "<c-w>q")
-- Split Window --
keymap.set("n", "ss", ":split<return>", opts)
keymap.set("n", "sv", ":vsplit<return>", opts)
-- Move Window --
keymap.set("n", "sh", "<c-w>h")
keymap.set("n", "sj", "<c-w>j")
keymap.set("n", "sk", "<c-w>k")
keymap.set("n", "sl", "<c-w>l")
-- Resize Window --
keymap.set("n", "<c-w><left>", "<c-w><")
keymap.set("n", "<c-w><right>", "<c-w>>")
keymap.set("n", "<c-w><up>", "<c-w>+")
keymap.set("n", "<c-w><down>", "<c-w>-")

-- Dignostics --
keymap.set("n", "<c-j>", function()
  vim.diagnostic.goto_next()
end, opts)
keymap.set("n", "<c-k>", function()
  vim.diagnostic.goto_prev()
end, opts)

-- FzfLua --
-- example
-- local fzf_lua = require("fzf-lua")
-- keymap.set("n", "<leader>p", fzf_lua.files, {})

-- Neo-tree --
keymap.set("n", "<leader>e", ":Neotree filesystem reveal toggle left<return>")
