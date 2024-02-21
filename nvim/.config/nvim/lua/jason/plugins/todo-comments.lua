return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Telescope todo" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Toggle trouble todo" },
  },
}
