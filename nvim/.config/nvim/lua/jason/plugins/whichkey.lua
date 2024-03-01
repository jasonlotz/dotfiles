return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.setup({
      window = {
        border = "single",
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
    })

    wk.register({
      ["<leader>"] = {
        c = "Code",
        d = "Debug",
        e = "File explorer",
        f = "Fuzzy find",
        g = "Git",
        n = "Swap next",
        o = "Obsidian",
        p = "Swap Previous",
        r = "Restart",
        s = "Split",
        t = "Tab",
        u = "Dismiss / clear",
        w = "Save",
        x = "Trouble",
      },
    })
  end,
}
