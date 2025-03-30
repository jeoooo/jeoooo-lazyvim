return {
  "akinsho/flutter-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
  event = "VeryLazy",
  config = function()
    require("flutter-tools").setup({
      widget_guides = { enabled = true },
    })
  end,
}
