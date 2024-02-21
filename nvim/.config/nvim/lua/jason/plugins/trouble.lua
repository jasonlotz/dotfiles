return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble: toggle " },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble: toggle workspace diagnostics" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble: toggle document diagnostics" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Trouble: toggle location list" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble: toggle quickfix" },
    { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble: LSP references" },
  },
}
