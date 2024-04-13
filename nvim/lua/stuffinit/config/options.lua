vim.g.mapleader = " " -- Set leader key to space
vim.g.netrw_banner = 0 -- gets rid of the annoying banner for netrw
vim.g.netrw_browse_split = 4 -- open in prior window
vim.g.netrw_altv = 1 -- change from left splitting to right splitting
vim.g.netrw_liststyle = 3 -- tree style view in netrw
--vim.cmd("let g:netrw_list_hide=netrw_gitignore#Hide()")

vim.opt.title = true -- show title
vim.cmd("set path+=**") -- search current directory recursively
vim.opt.syntax = "ON"
vim.opt.backup = false
vim.opt.compatible = false -- turn off vi compatibility mode
vim.opt.number = true -- turn on line numbers
vim.opt.relativenumber = true -- turn on relative line numbers
vim.opt.mouse = "a" -- enable the mouse in all modes
vim.opt.ignorecase = true -- enable case insensitive searching
vim.opt.smartcase = true -- all searches are case insensitive unless there's a capital letter
vim.opt.hlsearch = true -- Enable all highlighted search results
vim.opt.incsearch = true -- enable incremental searching
vim.opt.wrap = true -- enable text wrapping
vim.opt.tabstop = 4 -- tabs=4spaces
vim.opt.shiftwidth = 4
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8" -- encoding set to utf-8
vim.opt.pumheight = 10 -- number of items in popup menu
vim.opt.showtabline = 2 -- always show the tab line
vim.opt.laststatus = 2 -- always show statusline
vim.opt.signcolumn = "auto"
vim.opt.expandtab = false -- expand tab
vim.opt.smartindent = true
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.showmode = true
vim.opt.scrolloff = 8 -- scroll page when cursor is 8 lines from top/bottom
vim.opt.sidescrolloff = 8 -- scroll page when cursor is 8 spaces from left/right
vim.opt.sidescrolloff = 8 -- scroll page when cursor is 8 spaces from left/right
vim.opt.guifont = "monospace:h17"
vim.opt.clipboard = unnamedplus
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.splitbelow = true -- split go below
vim.opt.splitright = true -- vertical split to the right
vim.opt.termguicolors = true -- terminal gui colors
vim.cmd("filetype plugin on") -- set filetype
vim.cmd("set wildmenu")

vim.opt.autoindent = true
--- vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = "n"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.cmdheight = 0
end

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- automatically generate a template when a new bash script or markdown document is opened.
vim.cmd(":autocmd BufNewFile *.sh 0r ~/.config/nvim/skeleton.sh")
vim.cmd(":autocmd BufNewFile *.md 0r ~/.config/nvim/skeleton.md")
