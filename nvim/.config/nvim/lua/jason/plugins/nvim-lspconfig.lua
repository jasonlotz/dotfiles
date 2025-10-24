return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "saghen/blink.cmp",
    { "folke/neodev.nvim", config = true },
    { "antosha417/nvim-lsp-file-operations", dependencies = { "nvim-tree/nvim-tree.lua" }, config = true },
  },
  config = function()
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
      virtual_text = true,
      float = {
        border = "rounded",
      },
    })

    -- add additional capabilities supported by blink and lsp-file-operations
    local capabilities = vim.tbl_deep_extend(
      "force",
      require("blink.cmp").get_lsp_capabilities(),
      require("lsp-file-operations").default_capabilities()
    )

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    -- emmet
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

    -- gopls
    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          usePlaceholders = true,
        },
      },
    })

    -- TODO: eslint and typescript server have duplicate diagnostics.  This code fixes it, but it might be making eslint less effective so I'm leaving it commented out for now.
    -- eslint
    -- vim.lsp.config("eslint", {
    --   settings = {
    --     eslint = {
    --       -- Only provide code actions, not diagnostics to avoid duplicates
    --       format = false,
    --       validate = false,
    --     },
    --   },
    --   on_attach = function(client, bufnr)
    --     -- Disable diagnostic capabilities from eslint to avoid duplicates with typescript language server
    --     client.server_capabilities.diagnosticProvider = false
    --   end,
    -- })

    -- lua
    vim.lsp.config("lua_ls", {
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
  end,
}
