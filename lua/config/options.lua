-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options before

-- relative line numbers
vim.opt.relativenumber = false -- Disable relative numbers
vim.opt.number = true -- Enable absolute line numbers

-- use PowerShell on Windows; keep the OS default shell (zsh/bash) on mac/linux,
-- except fish (CachyOS default), which isn't POSIX-compatible and breaks plugins that shell out
if vim.fn.has("win32") ~= 1 and vim.o.shell:match("fish$") then
  vim.opt.shell = vim.fn.executable("bash") == 1 and "bash" or "sh"
end
if vim.fn.has("win32") == 1 then
  vim.opt.shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
  vim.opt.shellcmdflag =
    "-NoLogo -NonInteractive -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSStyle.OutputRendering='plaintext';"
  vim.opt.shellredir = "2>&1 | %%{ \"$_\" } | Out-File %s; exit $LastExitCode"
  vim.opt.shellpipe = "2>&1 | %%{ \"$_\" } | Tee-Object %s; exit $LastExitCode"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- line wrap
vim.opt.wrap = true

-- disable conceal in markdown files
vim.opt.conceallevel = 0 -- Disable concealment completely
vim.opt.concealcursor = "" -- Ensure it stays visible in all modes
