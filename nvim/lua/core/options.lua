-- set leader key 
vim.g.mapleader = " "

--  use fat cursor
vim.opt.guicursor = ""

-- relativ number
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabulation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- no wrap
vim.opt.wrap = false

-- no backup 
vim.opt.swapfile = false
vim.opt.backup = false

-- long undotree history
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- no highlight for search but show current regex
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- nice color i guess
vim.opt.termguicolors = true

-- keep 8 lignes top and bottom from screen
vim.opt.scrolloff = 8

-- always draw the sign column (debug sign and all)
vim.opt.signcolumn = "yes"

-- characters included in file names ... ?
vim.opt.isfname:append("@-@")

-- time in miliseconds without typing before saving swapfile to disk 
vim.opt.updatetime = 50

-- add visual limit
vim.opt.colorcolumn = "80"

-- split
vim.opt.splitbelow = true
vim.opt.splitright = true
--
-- better visual block mode
vim.opt.virtualedit = "block"
