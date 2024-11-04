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
    require 'plugins.lsp',
    require 'plugins.autocomplete'
}
opts = {
   performance = {
    rtp = {
      reset = false -- I need this because otherwise lazy.nvim reset the runtimepath
    },
  } 
}

--try to force the treesitter to use the right parsers.
require("lazy").setup(plugins, opts)
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/nvim-treesitter")



