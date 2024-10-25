vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.syntax = "on" -- syntax highlighting

vim.opt.laststatus = 2

vim.opt.termguicolors = true -- set term gui colors (most terminals support this)

vim.opt.backspace = "indent,eol,start"

vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers

vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true -- smart case

vim.opt.smartindent = true -- make indenting smarter again
vim.opt.autoindent = true

vim.opt.tabstop = 2 -- insert 2 spaces for a tab
-- vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.expandtab = true -- convert tabs to spaces

vim.opt.incsearch = true
-- vim.opt.noerrorbells = true
vim.opt.visualbell = true
-- vim.opt.t_vb = true
vim.opt.mouse = "a" -- allow the mouse to be used in neovim

vim.opt.backup = false -- creates a backup file
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.updatetime = 100 -- faster completion
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.cursorline = true -- highlight the current line

vim.opt.wrap = false -- display lines as one long line

-- vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus" -- copy/paste to system clipboard

vim.g.mapleader = " "
