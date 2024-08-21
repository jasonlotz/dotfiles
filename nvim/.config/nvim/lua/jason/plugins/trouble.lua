return {
  "folke/trouble.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Trouble",
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Trouble: workspace diagnostics" },
    { "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Trouble: buffer diagnostics" },
    {
      "<leader>xr",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "Trouble: LSP ref/def diagnostics",
    },
    { "<leader>xq", "<cmd>Trouble qflist<cr>", desc = "Trouble: quickfix" },
    { "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Trouble: symbols" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Trouble: location list" },
  },
}
