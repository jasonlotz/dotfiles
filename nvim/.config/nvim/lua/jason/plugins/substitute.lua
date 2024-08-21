return {
  "gbprod/substitute.nvim",
  config = true,
  keys = {
    { mode = "n", "<leader>r", "<cmd>lua require('substitute').operator()<cr>", desc = "substitute", noremap = true },
    { mode = "n", "<leader>rr", "<cmd>lua require('substitute').line()<cr>", desc = "substitute line", noremap = true },
    { mode = "n", "<leader>R", "<cmd>lua require('substitute').eol()<cr>", desc = "substitute-eol", noremap = true },
    { mode = "x", "<leader>r", "<cmd>lua require('substitute').visual()<cr>", desc = "substitute", noremap = true },
  },
}
