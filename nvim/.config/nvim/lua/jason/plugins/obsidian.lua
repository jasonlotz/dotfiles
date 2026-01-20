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
    footer = {
      enabled = false, -- I would like to keep the footer, but it's kind of glitchy so turning off for now
    },
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
    note_id_func = function(title)
      local name = ""
      -- Sanitize title to create a filename
      if title ~= nil then
        name = title:gsub("[^ A-Za-z0-9-]", "")
      end
      -- Generate a random name if title is nil or results in an empty string
      if #name == 0 then
        local suffix = ""
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
        name = tostring(os.time()) .. "-" .. suffix
      end
      return name
    end,
    attachments = {
      folder = "$assets/attachments",
      img_name_func = function()
        return string.format("%s-", os.time())
      end,
    },
  },
  -- stylua: ignore
  keys = {
    {"<leader>od", "<cmd>Obsidian today<cr>", desc = "Obsidian: daily note"},
    {"<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "Obsidian: yesterday note"},
    {"<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian: backlinks"},
    {"<leader>o#", "<cmd>Obsidian tags<cr>", desc = "Obsidian: tags"},
    {"<leader>oo", "<cmd>Obsidian open<cr>", desc = "Obsidian: open in Obsidian app"},
    {"<leader>of", "<cmd>Obsidian follow_link<cr>", desc = "Obsidian: follow link"},
    {"<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian: paste image"},
    {"<leader>oc", "<cmd>Obsidian toc<cr>", desc = "Obsidian: table of contents"},
    {"<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian: new"},
    {"<leader>oN", "<cmd>Obsidian new_from_template<cr>", desc = "Obsidian: new from template"},
    {"<leader>ot", function() Obsidian.picker.grep_notes({ query = "- [ ]" }) end, desc = "Obsidian: unchecked checkboxes"},
    {"<leader>or", "<cmd>Obsidian rename<cr>", desc = "Obsidian: rename note"},
    {"<leader>ol", "<cmd>Obsidian link<cr>", desc = "Obsidian: insert link on selected text"},
    {"<leader>oe", "<cmd>Obsidian extract_note<cr>", desc = "Obsidian: extract selected text to new note"},
  },
}
