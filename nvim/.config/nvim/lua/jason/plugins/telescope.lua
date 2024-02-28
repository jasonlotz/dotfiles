return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules/", ".git/", ".venv/", ".obsidian/" },
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
        find_files = {
          file_ignore_patterns = { "node_modules/", ".git/", ".venv/", ".obsidian/" },
          hidden = true,
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<c-k>"] = actions.move_selection_previous, -- move to prev result
            ["<c-j>"] = actions.move_selection_next, -- move to next result
            ["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")
    telescope.load_extension("ui-select")
  end,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Fuzzy find recent files" },
    { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find string in cwd" },
    { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
    { "<leader>fo", "<cmd>Telescope buffers<cr>", desc = "Fuzzy find buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Fuzzy find help tags" },
  },
}
