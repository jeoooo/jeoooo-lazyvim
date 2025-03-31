return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      marksman = {
        autostart = false, -- Prevents marksman from starting
      },
    },
  },
}
