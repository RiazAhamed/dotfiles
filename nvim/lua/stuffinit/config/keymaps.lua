local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Quick escaspe
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "ss", ":split<Return>", opts, { desc = "Split window vertically" })
keymap.set("n", "sv", ":vsplit<Return>", opts, { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

---Delete word backwords
keymap.set("n", "<S-left>", 'vb"_d', { desc = "Delete previous word" })
keymap.set("n", "<S-right>", 've"_d', { desc = "Delete next word" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Visual rearrange
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" }) -- Move current line down
keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move line up" }) -- Move current line up

-- Refactoring
keymap.set("x", "<leader>re", ":Refactor extract ", { desc = "Refactor extract " })
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ", { desc = "Refactor extract to file" })
keymap.set("x", "<leader>rv", ":Refactor extract_var ", { desc = "Refactor extract " })
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var", { desc = "Refactor inline var" })
keymap.set("n", "<leader>rI", ":Refactor inline_func", { desc = "Refactor inline function" })
keymap.set("n", "<leader>rb", ":Refactor extract_block", { desc = "Refactor extract block" })
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file", { desc = "Refactor extract block to file" })

-- -- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Automatically close brackets, parethesis, and quotes
-- keymap.set("i", "'", "''<left>")
-- keymap.set("i", '"', '""<left>')
-- keymap.set("i", "(", "()<left>")
-- keymap.set("i", "[", "[]<left>")
-- keymap.set("i", "{", "{}<left>")
-- keymap.set("i", "{;", "{};<left><left>")
-- keymap.set("i", "/*", "/**/<left><left>")
