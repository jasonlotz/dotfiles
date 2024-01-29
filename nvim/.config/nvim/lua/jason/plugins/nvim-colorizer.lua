return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    filetypes = {
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "python",
    },
  },
}
