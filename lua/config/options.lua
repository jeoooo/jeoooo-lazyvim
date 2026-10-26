-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options before

-- relative line numbers
vim.opt.relativenumber = false -- Disable relative numbers
vim.opt.number = true -- Enable absolute line numbers

-- use powershell on Windows only; keep the OS default shell (zsh/bash) on mac/linux
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "powershell"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellquote = '"'
  vim.opt.shellxquote = ""
end

-- line wrap
vim.opt.wrap = true

-- disable conceal in markdown files
vim.opt.conceallevel = 0 -- Disable concealment completely
vim.opt.concealcursor = "" -- Ensure it stays visible in all modes
