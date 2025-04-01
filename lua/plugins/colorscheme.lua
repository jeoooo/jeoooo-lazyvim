-- return {
--   {
--     "folke/tokyonight.nvim",
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--       on_colors = function(colors)
--         -- Load onedark colors properly
--         local ok, onedark = pcall(require, "onedark.palette")
--         if not ok then
--           return
--         end
--
--         -- Apply onedark colors to tokyonight
--         colors.fg = onedark.dark.fg
--         colors.bg = onedark.dark.bg
--         colors.comment = onedark.dark.grey
--         colors.blue = onedark.dark.blue
--         colors.cyan = onedark.dark.cyan
--         colors.green = onedark.dark.green
--         colors.orange = onedark.dark.orange
--         colors.purple = onedark.dark.purple
--         colors.red = onedark.dark.red
--         colors.yellow = onedark.dark.yellow
--       end,
--     },
--   },
-- }

-- onedark option 1
-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000,
--   config = function()
--     require("onedark").setup({
--       style = "cool", -- or any other style you prefer
--       transparent = true, -- This enables global transparency
--       -- transparent = false,
--       term_colors = true,
--     })
--     require("onedark").load()
--   end,
-- }

-- ondark option 2
-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000,
--   config = function()
--     require("onedarkpro").setup({
--       colors = {}, -- Keep default colors
--       options = {
--         transparency = true, -- Enable transparent background
--         -- transparency = false, -- Enable transparent background
--         terminal_colors = true, -- Apply colors to the terminal
--         theme = "onedark_dark", -- Use the "Onedark Dark" variant
--       },
--     })
--     vim.cmd("colorscheme onedark_dark") -- Apply the theme
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Remove background
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Remove floating windows' background
--   end,
-- }
--

-- TODO : NEEDS FIXING FOR onedark_dark Transparency
return {
  -- Main theme (default: "onedark_dark")

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      local current_theme = "onedark_dark"

      local function apply_theme()
        -- Set transparency based on theme
        local transparency = (current_theme == "onedark_dark")

        require("onedarkpro").setup({
          options = {
            transparency = transparency,
            terminal_colors = true,
            theme = current_theme,
          },
        })
        vim.cmd("colorscheme " .. current_theme)
        -- print("Theme: " .. current_theme .. " | Transparency: " .. (transparency and "On" or "Off"))
      end

      -- Apply default theme
      apply_theme()
    end,
  },
  -- Additional themes
  { "ray-x/aurora" },
  { "navarasu/onedark.nvim" },
  { "loctvl842/monokai-pro.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "marko-cerovac/material.nvim" },
  { "folke/tokyonight.nvim" },
  { "thedenisnikulin/vim-cyberpunk" },
  { "akai54/2077.nvim" },
  { "iruzo/matrix-nvim" },
}

--
