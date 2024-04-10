-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("stuffinit.discipline")
discipline.coder()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Quick escape
keymap.set("i", "jj", "<ESC>", opts)

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

---Delete word backwords
keymap.set("n", "<S-left>", 'vb"_d')
keymap.set("n", "<S-right>", 've"_d')

--Select all
--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jump list
keymap.set("n", "<C-m", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-tab>", ":tabprev<Return>", opts)

-- Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("stuffinit.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
  require("stuffinit.lsp").toggleInlayHints()
end)
