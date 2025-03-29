return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Ensure the filename is always shown
    opts.sections.lualine_c = {
      {
        "filename",
        path = 1, -- 0 = Just filename, 1 = Relative path, 2 = Full path
        symbols = { modified = " ●", readonly = " 🔒", unnamed = "[No Name]" },
      },
    }

    -- Remove lualine_x (where the clock was) by setting it empty
    opts.sections.lualine_x = {}
  end,
}
