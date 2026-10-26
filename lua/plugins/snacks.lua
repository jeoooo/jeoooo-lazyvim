return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    animate = {},
    dashboard = {
      enabled = true, -- Enable the dashboard
      width = 60,
      row = nil, -- Center the dashboard
      col = nil, -- Center the dashboard
      pane_gap = 4,
      autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",

      -- Preset configuration
      preset = {
        pick = nil, -- Picker for fzf/telescope/etc.
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
 ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
 ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
 ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
 ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
 ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
 ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
   ]],
      },

      -- Custom formatting options
      formats = {
        footer = { "%s", align = "center" },
        header = { "%s", align = "center" },
        file = function(item, ctx)
          local fname = vim.fn.fnamemodify(item.file, ":~")
          fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
          if #fname > ctx.width then
            local dir = vim.fn.fnamemodify(fname, ":h")
            local file = vim.fn.fnamemodify(fname, ":t")
            if dir and file then
              file = file:sub(-(ctx.width - #dir - 2))
              fname = dir .. "/…" .. file
            end
          end
          local dir, file = fname:match("^(.*)[/\\](.+)$")
          return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
        end,
      },

      -- Dashboard sections
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
    picker = {
      sources = {
        -- <leader>e file explorer: show dotfiles (and gitignored files),
        -- but keep the truly noisy dirs out of the tree.
        explorer = {
          hidden = true, -- show dotfiles (.env, .github, .gitignore, ...)
          ignored = true, -- also show gitignored files (e.g. .env.local)
          exclude = { ".git", "node_modules" },
        },
        -- find files picker
        files = {
          hidden = true,
          ignored = true,
          exclude = { ".git", "node_modules" },
        },
        -- live grep
        grep = {
          hidden = true,
          ignored = true,
          exclude = { ".git", "node_modules" },
        },
      },
    },
  },
}
