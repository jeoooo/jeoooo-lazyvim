vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE
  highlight SnacksNormal guibg=NONE ctermbg=NONE
]])

-- Disable automatic folding in Neovim
vim.opt.foldmethod = "manual" -- Disable automatic folding
vim.opt.foldenable = false -- Disable folding by default

vim.g.mapleader = " " -- Set leader to Space
vim.g.maplocalleader = " " -- Also set local leader to Space

-- Now, load LazyVim and plugins
require("config.lazy")
