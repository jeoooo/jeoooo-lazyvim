return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure required dependency
  cmd = "Telescope", -- Lazy-load Telescope when the command is used
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical", -- Change if needed
        sorting_strategy = "ascending",
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    })
  end,
}
