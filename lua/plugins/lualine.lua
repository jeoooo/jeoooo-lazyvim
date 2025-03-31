return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            local hour = tonumber(os.date("%H")) -- Get 24-hour format
            local am_pm = "AM"
            if hour >= 12 then
              am_pm = "PM"
              if hour > 12 then
                hour = hour - 12
              end
            elseif hour == 0 then
              hour = 12
            end
            return string.format(" %d:%02d %s", hour, tonumber(os.date("%M")), am_pm)
          end,
        },
        lualine_y = {
          function()
            local os_icons = {
              Windows = "󰍲", -- Windows icon
              Linux = "", -- Linux icon
              Darwin = "", -- macOS icon
            }
            return os_icons[jit.os] or "" -- Fallback: question mark
          end,
          "copilot", -- Show Copilot status
          "diagnostics", -- Show error, warning, hint, info count
        },
      },
    },
  },
}
