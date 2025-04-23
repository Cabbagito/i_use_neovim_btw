vim.g.mapleader = " "

vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.clipboard = "unnamedplus"

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
