return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    win = {
      border = "single",
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
  },
  keys = {
    { "<leader>c", desc = "Code" },
    { "<leader>d", desc = "Debug" },
    { "<leader>e", desc = "File explorer" },
    { "<leader>f", desc = "Fuzzy find" },
    { "<leader>g", desc = "Git" },
    { "<leader>m", desc = "Flash search" },
    { "<leader>n", desc = "Swap next" },
    { "<leader>o", desc = "Obsidian" },
    { "<leader>p", desc = "Swap Previous" },
    { "<leader>r", desc = "Replace" },
    { "<leader>s", desc = "Split" },
    { "<leader>t", desc = "Tab" },
    { "<leader>u", desc = "Dismiss / clear" },
    { "<leader>w", desc = "Save" },
    { "<leader>x", desc = "Trouble" },
  },
}
