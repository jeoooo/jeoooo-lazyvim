return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Enable inline Git blame
    current_line_blame_opts = {
      delay = 100, -- Show blame after 100ms
      virt_text = true,
      virt_text_pos = "eol", -- Position at end of line
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  },
}
