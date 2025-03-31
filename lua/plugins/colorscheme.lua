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



-- TODO : NEEDS WORKING ON REAL TIME SWITCHING OF THEMES INSTEAD OF PRESSING ENTER MANUALLY
return {
  -- Main theme (default: "onedark_dark")
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      local current_transparency = true
      local current_theme = "onedark_dark"

      local function apply_theme()
        -- If the theme is "onelight", force transparency OFF
        local transparency = (current_theme ~= "onelight") and current_transparency or false

        require("onedarkpro").setup({
          options = {
            transparency = transparency,
            terminal_colors = true,
            theme = current_theme,
          },
        })
        vim.cmd("colorscheme " .. current_theme)
        print("Theme: " .. current_theme .. " | Transparency: " .. (transparency and "On" or "Off"))
      end

      -- 🌟 Theme Picker (`<leader>uC`)
      vim.keymap.set("n", "<leader>uC", function()
        local themes = {
          "onedark_dark", "onelight", "onedark_vivid", -- Onedark variants
          "aurora", "monokai-pro", "dracula", "material",
          "tokyonight", "vim-cyberpunk", "2077", "matrix"
        }

        vim.ui.select(themes, { prompt = "Select Theme" }, function(choice)
          if choice then
            current_theme = choice
            current_transparency = (choice ~= "onelight") -- Reset transparency based on theme
            apply_theme()
          end
        end)
      end, { desc = "Switch Theme" })

      -- 🌟 Transparency Toggle (`<leader>uP`)
      vim.keymap.set("n", "<leader>uP", function()
        -- Prevent toggling transparency for "onelight"
        if current_theme == "onelight" then
          print("Transparency is always OFF for 'onelight'")
          return
        end

        current_transparency = not current_transparency
        apply_theme()
      end, { desc = "Toggle Transparency" })

      -- Apply default theme
      apply_theme()
    end,
  },

  -- Additional themes
  { "ray-x/aurora" },
  { "loctvl842/monokai-pro.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "marko-cerovac/material.nvim" },
  { "folke/tokyonight.nvim" },
  { "thedenisnikulin/vim-cyberpunk" },
  { "akai54/2077.nvim" },
  { "iruzo/matrix-nvim" },
}

--



