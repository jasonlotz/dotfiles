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
    frontmatter = {
      enabled = false,
    },
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
    },
    attachments = {
      folder = "$assets/attachments",
      img_name_func = function()
        return string.format("%s-", os.time())
      end,
    },
  },
  -- stylua: ignore
  keys = {
    {"<leader>ot", "<cmd>Obsidian today<cr>", desc = "Obsidian: today note"},
    {"<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "Obsidian: yesterday note"},
    {"<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian: backlinks"},
    {"<leader>o#", "<cmd>Obsidian tags<cr>", desc = "Obsidian: tags"},
    {"<leader>oo", "<cmd>Obsidian open<cr>", desc = "Obsidian: open"},
    {"<leader>ol", "<cmd>Obsidian follow_link<cr>", desc = "Obsidian: follow link"},
    {"<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian: paste image"}
  },
}
