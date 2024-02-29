return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>fb", ":Telescope file_browser<cr>", "Telescope file browser" },
    { "<leader>fB", ":Telescope file_browser files=false<cr>", "Telescope folder browser" },
  },
}
