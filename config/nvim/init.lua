require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
plugins = {
    require 'plugins.colortheme',
    require 'plugins.neotree',
    require 'plugins.telescope',
    require 'plugins.tmuxnavigator',
    require 'plugins.treesitter',
    require 'plugins.lsp'
}
opts = {}

require("lazy").setup(plugins, opts)

