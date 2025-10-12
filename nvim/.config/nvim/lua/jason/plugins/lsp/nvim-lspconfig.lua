return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "saghen/blink.cmp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", config = true },
  },
  config = function()
    -- import blink capabilities
    local blink_cmp_lsp = require("blink.cmp")

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- set keybinds
        -- See snacks.lua for more keybinds
        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", function()
          vim.diagnostic.jump({ count = -1, float = true })
        end, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", function()
          vim.diagnostic.jump({ count = 1, float = true })
        end, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "gh", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>cR", ":LspRestart<cr>", opts) -- mapping to restart lsp if necessary
      end,
    })

    -- Add border to the diagnostic popup window
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

    vim.diagnostic.config({
      underline = {
        severity = { min = vim.diagnostic.severity.WARN },
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = "󰠠 ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
      virtual_text = {
        prefix = "■ ", -- Could be '●', '▎', 'x', '■', , 
      },
      float = border,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities = vim.tbl_deep_extend("force", capabilities, blink_cmp_lsp.get_lsp_capabilities())

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    -- configure graphql language server
    vim.lsp.config("graphql", {
      filetypes = { "graphql", "gql", "typescriptreact", "javascriptreact" },
    })

    -- configure emmet language server
    vim.lsp.config("emmet_ls", {
      init_options = {
        html = {
          options = {
            ["bem.enabled"] = true,
          },
        },
      },
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
    })

    vim.lsp.config("gopls", {
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = function(fname)
        return vim.fs.root(fname, { "go.work", "go.mod", ".git" })
      end,
      settings = {
        gopls = {
          usePlaceholders = true,
        },
      },
    })

    -- configure lua server (with special settings)
    vim.lsp.config("lua_ls", {
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
