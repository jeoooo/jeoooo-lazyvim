return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    vim.defer_fn(function()
      require("presence"):setup({})
    end, 1000) -- Wait 1 second before running setup
  end,
}
