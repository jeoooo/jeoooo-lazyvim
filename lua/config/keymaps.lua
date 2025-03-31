-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- theme switcher keybinds

-- vim.g.transparency = 100 -- Default transparency (0-100)
--
-- vim.keymap.set("n", "<leader>uT", function()
--   local new_value = vim.fn.input("Set Transparency (0-100): ", vim.g.transparency, "number")
--   new_value = math.max(0, math.min(100, tonumber(new_value) or 100)) -- Clamp between 0-100
--
--   vim.g.transparency = new_value
--   local alpha = math.floor((new_value / 100) * 255) -- Convert to hex alpha
--
--   -- Apply transparency
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none", blend = alpha })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", blend = alpha })
-- end, { desc = "Adjust Transparency" })
--
--

-- lazydocker keybinds
if vim.fn.executable("lazydocker") == 1 then
  vim.keymap.set("n", "<leader>gd", function()
    LazyVim.terminal("lazydocker", { esc_esc = false, ctrl_hjkl = false })
  end, { desc = "Lazydocker" })
end
