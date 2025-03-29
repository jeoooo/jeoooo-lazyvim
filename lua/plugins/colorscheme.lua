return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        -- Load onedark colors properly
        local ok, onedark = pcall(require, "onedark.palette")
        if not ok then
          return
        end

        -- Apply onedark colors to tokyonight
        colors.fg = onedark.dark.fg
        colors.bg = onedark.dark.bg
        colors.comment = onedark.dark.grey
        colors.blue = onedark.dark.blue
        colors.cyan = onedark.dark.cyan
        colors.green = onedark.dark.green
        colors.orange = onedark.dark.orange
        colors.purple = onedark.dark.purple
        colors.red = onedark.dark.red
        colors.yellow = onedark.dark.yellow
      end,
    },
  },
}

-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000,
--   config = function()
--     require("onedark").setup({
--       style = "warmer", -- or any other style you prefer
--       transparent = true, -- This enables global transparency
--       term_colors = true,
--     })
--     require("onedark").load()
--   end,
-- }
