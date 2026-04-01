return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      require("nvim-treesitter").install({
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "go",
        "scala",
        "groovy",
        "java",
        "python",
        "terraform",
      })

      -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
      require("ts_context_commentstring").setup({ enable_autocmd = false })
    end,
  },
}
