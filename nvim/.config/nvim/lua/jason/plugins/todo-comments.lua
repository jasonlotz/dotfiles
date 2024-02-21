return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Telescope Todo" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Toggle Trouble Todo" },
  },
}
