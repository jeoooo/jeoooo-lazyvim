-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- disable warnings for markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Disable diagnostics for current buffer (API changed in nvim 0.11)
    if vim.fn.has("nvim-0.11") == 1 then
      vim.diagnostic.enable(false, { bufnr = 0 })
    else
      vim.diagnostic.disable(0)
    end
  end,
})
