return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle Trouble Workspace Diagnostics" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle Trouble Document Diagnostics" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Toggle Trouble Location List" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle Trouble Quickfix" },
    { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle Trouble LSP References" },
  },
}
