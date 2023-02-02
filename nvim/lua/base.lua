vim.cmd("autocmd!")
vim.g.mapleader = " "

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8' 
vim.opt.fileencoding = 'utf-8'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true 
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = false 

vim.opt.termguicolors = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10 
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.wrap = false 
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

vim.opt.mouse = a
