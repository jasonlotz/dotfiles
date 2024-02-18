return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Todo Telescope" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo Trouble" },
  },
}
