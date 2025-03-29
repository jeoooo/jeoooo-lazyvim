-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options before

-- relative line numbers
vim.opt.relativenumber = false -- Disable relative numbers
vim.opt.number = true -- Enable absolute line numbers

-- use powershell as default config
vim.opt.shell = "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = '"'
vim.opt.shellxquote = ""

-- line wrap
vim.opt.wrap = true
