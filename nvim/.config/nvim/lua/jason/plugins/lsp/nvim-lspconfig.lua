return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Show LSP references"
      keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts) -- show definition, references

      opts.desc = "Go to declaration"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

      opts.desc = "Show LSP definitions"
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts) -- show lsp definitions

      opts.desc = "Show LSP implementations"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts) -- show lsp implementations

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", opts) -- show lsp type definitions

      opts.desc = "Show document symbols"
      keymap.set("n", "<leader>cd", "<cmd>Telescope lsp_document_symbols<cr>", opts) -- show document symbols

      opts.desc = "Show workplace symbols"
      keymap.set("n", "<leader>cw", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts) -- show workspace symbols

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts) -- smart rename

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<cr>", opts) -- show  diagnostics for file

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "gh", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>cR", ":LspRestart<cr>", opts) -- mapping to restart lsp if necessary
    end

    local border = {
      { "┌", "FloatBorder" },
      { "─", "FloatBorder" },
      { "┐", "FloatBorder" },
      { "│", "FloatBorder" },
      { "┘", "FloatBorder" },
      { "─", "FloatBorder" },
      { "└", "FloatBorder" },
      { "│", "FloatBorder" },
    }

    -- Already configured by Noice.  Uncomment if you want to use it (as well as the handlers assignment in each lspconfig below).
    -- Add the border on hover and on signature help popup window
    -- local handlers = {
    --   ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    --   ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),

    -- Add border to the diagnostic popup window
    vim.diagnostic.config({
      virtual_text = {
        prefix = "■ ", -- Could be '●', '▎', 'x', '■', , 
      },
      float = { border = border },
    })

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
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure typescript server with plugin
    lspconfig["ts_ls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure tailwindcss server
    lspconfig["tailwindcss"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure prisma orm server
    lspconfig["prismals"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure graphql language server
    lspconfig["graphql"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "graphql", "gql", "typescriptreact", "javascriptreact" },
    })

    -- configure emmet language server
    lspconfig["emmet_ls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
    })

    -- configure python server
    lspconfig["pyright"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure jdtls (java) server
    lspconfig["jdtls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure terraform server
    lspconfig["terraformls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["gopls"].setup({
      -- handlers = handlers,
      capabilities = capabilities,
      on_attach = on_attach,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          usePlaceholders = true,
        },
      },
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      -- handlers = handlers,
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
