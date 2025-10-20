return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")
    local mason_nvim_dap = require("mason-nvim-dap")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- ensure all LSP servers installed
    mason_lspconfig.setup({
      ensure_installed = {
        -- Web Development
        "html",
        "cssls",
        "emmet_ls",
        "tailwindcss",

        -- Backend/API
        "graphql",
        "prismals",

        -- TypeScript/JavaScript
        "ts_ls",
        "eslint",

        -- Lua
        "lua_ls",

        -- Python
        "pyright",

        -- Java
        "jdtls",

        -- Go
        "gopls",

        -- Infrastructure
        "terraformls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- auto install configured servers (with lspconfig)
    })

    -- ensure other tools (non-LSP servers) are installed
    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "luacheck", -- lua linter
      },
    })

    -- ensure DAP servers are installed
    mason_nvim_dap.setup({
      ensure_installed = {
        "nodejs",
        "python",
      },
    })

    vim.keymap.set("n", "<leader>lm", "<cmd>Mason<cr>", { desc = "Mason LSP Manager" })
  end,
}
