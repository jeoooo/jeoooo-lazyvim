return {
  "karb94/neoscroll.nvim",
  event = "BufRead",
  config = function()
    require("neoscroll").setup({
      easing_function = "quadratic", -- Smooth easing function
      hide_cursor = true, -- Hide cursor while scrolling
      stop_eof = true, -- Stop at end of file
    })
  end,
}
