return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    -- disable_frontmatter = true,
    workspaces = {
      {
        name = "obsidian-vault",
        path = "~/Documents/obsidian-vault",
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
