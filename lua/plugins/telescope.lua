return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure required dependency
  cmd = "Telescope", -- Lazy-load Telescope when the command is used
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical", -- Change if needed
        sorting_strategy = "ascending",
        -- Show dotfiles / gitignored files, but never .git or node_modules.
        file_ignore_patterns = { "^%.git/", "/%.git/", "node_modules/" },
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- include dotfiles
          no_ignore = true, -- include gitignored files
        },
        live_grep = {
          additional_args = { "--hidden", "--no-ignore" },
        },
      },
    })
  end,
}
