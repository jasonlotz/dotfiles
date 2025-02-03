return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Toggle trouble todo" },
    {
      "<leader>st",
      function()
        Snacks.picker.todo_comments()
      end,
      desc = "Todo",
    },
  },
}
