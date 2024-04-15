vim.cmd("let g:netrw_liststyle = 3")

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

vim.g.mapleader = " " -- Set leader key to space
vim.g.netrw_banner = 0 -- gets rid of the annoying banner for netrw
vim.g.netrw_browse_split = 4 -- open in prior window
vim.g.netrw_altv = 1 -- change from left splitting to right splitting
vim.g.netrw_liststyle = 3 -- tree style view in netrw
--vim.cmd("let g:netrw_list_hide=netrw_gitignore#Hide()")

opt.title = true -- show title
vim.cmd("set path+=**") -- search current directory recursively
opt.syntax = "ON"
opt.backup = false
opt.compatible = false -- turn off vi compatibility mode
opt.number = true -- turn on line numbers
opt.relativenumber = true -- turn on relative line numbers
opt.mouse = "a" -- enable the mouse in all modes
opt.ignorecase = true -- enable case insensitive searching
opt.smartcase = true -- all searches are case insensitive unless there's a capital letter
opt.hlsearch = true -- Enable all highlighted search results
opt.incsearch = true -- enable incremental searching
opt.wrap = true -- enable text wrapping
opt.tabstop = 4 -- tabs=4spaces
opt.shiftwidth = 4
opt.encoding = "utf-8"
opt.fileencoding = "utf-8" -- encoding set to utf-8
opt.pumheight = 10 -- number of items in popup menu
opt.showtabline = 2 -- always show the tab line
opt.laststatus = 2 -- always show statusline
opt.signcolumn = "auto"
opt.expandtab = false -- expand tab
opt.smartindent = true
opt.showcmd = true
opt.cmdheight = 2
opt.showmode = true
opt.scrolloff = 8 -- scroll page when cursor is 8 lines from top/bottom
opt.sidescrolloff = 8 -- scroll page when cursor is 8 spaces from left/right
opt.sidescrolloff = 8 -- scroll page when cursor is 8 spaces from left/right
opt.guifont = "monospace:h17"
opt.clipboard = unnamedplus
opt.completeopt = { "menuone", "noselect" }
opt.splitbelow = true -- split go below
opt.splitright = true -- vertical split to the right
opt.termguicolors = true -- terminal gui colors
vim.cmd("filetype plugin on") -- set filetype
vim.cmd("set wildmenu")

opt.autoindent = true
--- vim.opt.shell = "fish"
opt.backupskip = { "/tmp/*", "/private/tmp/*" }
opt.inccommand = "split"
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false -- No Wrap lines
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" })
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.splitkeep = "cursor"
opt.mouse = "n"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  opt.cmdheight = 0
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
