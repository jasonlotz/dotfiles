return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    legacy_commands = false, -- Remove when 4.0 is released
    disable_frontmatter = true,
    completion = {
      nvim_cmp = false,
      blink = true,
    },
    picker = {
      name = "snacks.pick",
    },
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
    checkbox = {
      order = { " ", "x" },
      -- This is the default configuration, you can change it to suit your needs.
      -- The characters used for checkboxes can be customized.
      char = "󰄱", -- Unicode character for unchecked checkbox
      checked_char = "", -- Unicode character for checked checkbox
      hl_group = "ObsidianTodo", -- Highlight group for unchecked checkbox
      checked_hl_group = "ObsidianDone", -- Highlight group for checked checkbox
    },
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart({ "open", url }) -- Mac OS
    end,
  },
  -- stylua: ignore
  keys = {
    {"<leader>ot", "<cmd>Obsidian today<cr>", desc = "Obsidian: today note"},
    {"<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "Obsidian: yesterday note"},
    {"<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian: backlinks"},
    {"<leader>o#", "<cmd>Obsidian tags<cr>", desc = "Obsidian: tags"}
  },
}
