return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline_popup", -- Enable floating command-line UI
    },
    messages = {
      enabled = false, -- Disable message handling (keeps default Neovim messages)
    },
    lsp = {
      progress = { enabled = false }, -- Disable LSP progress UI
      override = {}, -- No overrides for LSP messages
    },
    presets = {
      bottom_search = false, -- Don't change `/` search behavior
      command_palette = false, -- Don't enable Noice’s full command palette
    },
  },
}
