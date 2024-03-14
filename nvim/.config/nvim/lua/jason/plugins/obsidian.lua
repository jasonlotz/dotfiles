return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    disable_frontmatter = true,
    workspaces = {
      {
        name = "obsidian-vault",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/obsidian-vault",
      },
    },
    daily_notes = {
      folder = "@daily-notes",
      date_format = "%Y-%m-%d",
      alias_format = nil,
      template = "daily-note-template.md",
    },
    templates = {
      subdir = "$templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart({ "open", url }) -- Mac OS
    end,
  },
  -- stylua: ignore
  keys = {
    {"<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Obsidian: today note"},
    {"<leader>oy", "<cmd>ObsidianYesterday<cr>", desc = "Obsidian: yesterday note"},
    {"<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian: backlinks"},
    {"<leader>o#", "<cmd>ObsidianTags<cr>", desc = "Obsidian: tags"}
  },
}
