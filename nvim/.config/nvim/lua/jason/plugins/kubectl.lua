return {
  {
    "ramilito/kubectl.nvim",
    opt = true,
    keys = {
      { "<leader>k", "<cmd>lua require('kubectl').toggle()<cr>", desc = "Kubectl", noremap = true },
    },
  },
}
