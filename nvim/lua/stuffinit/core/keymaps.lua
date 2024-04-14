vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

---Delete word backwords
keymap.set("n", "<S-left>", 'vb"_d', { desc = "Delete previous word" })
keymap.set("n", "<S-right>", 've"_d', { desc = "Delete next word" })

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Visual rearrange
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up

-- Refactoring
keymap.set("x", "<leader>re", ":Refactor extract ", { desc = "Refactor extract " })
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ", { desc = "Refactor extract to file" })
keymap.set("x", "<leader>rv", ":Refactor extract_var ", { desc = "Refactor extract " })
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var", { desc = "Refactor inline var" })
keymap.set("n", "<leader>rI", ":Refactor inline_func", { desc = "Refactor inline function" })
keymap.set("n", "<leader>rb", ":Refactor extract_block", { desc = "Refactor extract block" })
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file", { desc = "Refactor extract block to file" })
