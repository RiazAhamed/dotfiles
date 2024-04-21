vim.cmd("let g:netrw_liststyle = 3")

vim.g.mapleader = " "
local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Vim options
vim.cmd("set path+=**") -- allow file search from project root
opt.syntax = "on" -- syntax highlighting
opt.backup = false -- no backup files
opt.compatible = false -- no compatibility with Vi
opt.mouse = "a" -- enable the mouse in all modes
opt.hlsearch = true -- Enable all highlighted search results
opt.incsearch = true -- enable incremental searching

opt.encoding = "utf-8"
opt.fileencoding = "utf-8" -- encoding set to utf-8

opt.pumheight = 10 -- number of items in popup menu
opt.showtabline = 2 -- always show the tab line
opt.laststatus = 2 -- always show statusline

opt.signcolumn = "auto" -- show sign column only when needed
opt.expandtab = false -- expand tab
