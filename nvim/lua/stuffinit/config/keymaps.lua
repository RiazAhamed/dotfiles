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
keymap.set("n", "<leader>t", ":tabnew<CR>") -- space+t creates new tab
keymap.set("n", "<leader>x", ":tabclose<CR>") -- space+x close tab
keymap.set("n", "<leader>j", ":tabprevious<CR>") -- space+j moves to previous tab
keymap.set("n", "<leader>k", ":tabnext<CR>") -- space+k moves to next tab

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

-- easy split generation
keymap.set("n", "<leader>v", ":vsplit") -- space+v creates a veritcal split
keymap.set("n", "<leader>s", ":split") -- space+s creates a horizontal split

-- buffer navigation
keymap.set("n", "<Tab>", ":bnext <CR>") -- Tab goes to next buffer
keymap.set("n", "<S-Tab>", ":bprevious <CR>") -- Shift+Tab goes to previous buffer
keymap.set("n", "<leader>d", ":bd! <CR>") -- Space+d delets current buffer

-- adjust split sizes easier
-- keymap.set("n", "<S-Left>", ":vertical resize +3<CR>") -- Control+Left resizes vertical split +
-- keymap.set("n", "<S-Right>", ":vertical resize -5<CR>") -- Control+Right resizes vertical split -

-- Automatically create if, case, and function templates
-- keymap.set("n", "<leader>i", "iif [ @ ]; then <CR><CR> else <CR><CR> fi <ESC>/@ <CR>")
-- keymap.set("n", "<leader>c", 'icase "$@" in <CR><CR> @)   <CR>;; <CR><CR> esac <ESC>5kI<ESC>/@<CR>')
-- keymap.set("n", "<leader>f", "i@() {<CR><CR> } <ESC>2kI<ESC>/@<CR>")

-- Easy way to get back to normal mode from home row
keymap.set("i", "kj", "<Esc>") -- kj simulates ESC
keymap.set("i", "jk", "<Esc>") -- jk simulates ESC

-- Automatically close brackets, parethesis, and quotes
keymap.set("i", "'", "''<left>")
keymap.set("i", '"', '""<left>')
keymap.set("i", "(", "()<left>")
keymap.set("i", "[", "[]<left>")
keymap.set("i", "{", "{}<left>")
keymap.set("i", "{;", "{};<left><left>")
-- keymap.set("i", "/*", "/**/<left><left>")

-- Automatically create if, case, and function templates in insert mode
keymap.set("i", ",i", "if [ @ ]; then <CR><CR> else <CR><CR> fi ")
keymap.set("i", ",c", 'case "$@" in <CR><CR> @)    ;; <CR><CR> esac')
keymap.set("i", ",f", "@() {<CR><CR> } ")

-- Visual Maps
keymap.set("v", "<leader>r", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
keymap.set("v", "<C-s>", ":sort<CR>") -- Sort highlighted text in visual mode with Control+S
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up

-- keymap.set("n", "<leader>r", function()
--   require("stuffinit.hsl").replaceHexWithHSL()
-- end)
--
-- keymap.set("n", "<leader>i", function()
--   require("stuffinit.lsp").toggleInlayHints()
-- end)
