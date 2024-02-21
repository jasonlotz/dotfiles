return {
  "kdheepak/lazygit.nvim",
  requires = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("lazygit")
    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>LazyGit<cr>", { noremap = true, silent = true })
  end,
}
