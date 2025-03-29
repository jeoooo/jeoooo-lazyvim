return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 5000, -- Notifications last longer (5 sec instead of default 2 sec)
    fps = 60, -- Smooth animations
    render = "minimal", -- "default" | "minimal" | "compact"
    stages = "fade_in_slide_out", -- Better transitions: "fade", "slide", "static"
    background_colour = "#1E1E2E", -- Adjust background color (Catppuccin Mocha)
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify -- 🔥 Force override Noice's notification handler
  end,
}
