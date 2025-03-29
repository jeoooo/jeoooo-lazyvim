return {
  "akinsho/toggleterm.nvim",
  opts = {
    direction = "float", -- Floating terminal (optional)
    hide_numbers = true, -- Hide terminal buffer numbers
    persist_mode = false, -- Avoid unnecessary state
    float_opts = {
      border = "curved", -- Style for floating terminal
      title = "", -- This removes the terminal title!
      title_pos = "center",
    },
  },
}
