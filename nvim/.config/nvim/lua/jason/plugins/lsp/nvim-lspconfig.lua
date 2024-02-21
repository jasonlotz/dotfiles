return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local opts = { noremap = true, silent = true }
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      local keymap = vim.keymap -- for conciseness
      keymap.set("n", "gR", "<cmd>Telescope lsp_references<cr>", "Show LSP references") -- show definition, references
      keymap.set("n", "gD", vim.lsp.buf.declaration, "Go to declaration") -- go to declaration
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", "Show LSP definitions") -- show lsp definitions
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", "Show LSP implementations") -- show lsp implementations
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", "Show LSP type definitions") -- show lsp type definitions
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "See available code actions") -- see available code actions, in visual mode will apply to selection
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, "Smart rename") -- smart rename
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<cr>", opts) -- show  diagnostics for file
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, "Show line diagnostics") -- show diagnostics for line
      keymap.set("n", "[d", vim.diagnostic.goto_prev, "Go to previous diagnostic") -- jump to previous diagnostic in buffer
      keymap.set("n", "]d", vim.diagnostic.goto_next, "Go to next diagnostic") -- jump to next diagnostic in buffer
      keymap.set("n", "gh", vim.lsp.buf.hover, "Show documentation for what is under cursor") -- show documentation for what is under cursor
      keymap.set("n", "<leader>rs", ":LspRestart<cr>", "Restart LSP") -- mapping to restart lsp if necessary
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- configure html server
    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure typescript server with plugin
    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure tailwindcss server
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure prisma orm server
    lspconfig["prismals"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure graphql language server
    lspconfig["graphql"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "graphql", "gql", "typescriptreact", "javascriptreact" },
    })

    -- configure emmet language server
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
    })

    -- configure python server
    lspconfig["pyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure jdtls (java) server
    lspconfig["jdtls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["gopls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}
