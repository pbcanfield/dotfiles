vim.cmd("set nu")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set nocompatible")
vim.cmd("set laststatus=2")
vim.cmd("syntax on")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set hlsearch")
vim.cmd("hi Search ctermbg=LightYellow")
vim.cmd("hi Search ctermfg=Red")
vim.cmd("set autoindent")
vim.cmd("set iskeyword-=_")
vim.cmd("let mapleader = ','")
vim.cmd("set splitright")
vim.cmd("set splitbelow")

vim.opt.cursorline = true
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

