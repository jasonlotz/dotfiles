return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          hidden = true,
        },
      },
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")
  end,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Fuzzy find files in cwd" },
    { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Fuzzy find recent files" },
    { "<leader>fs", "<cmd>Telescope live_grep<CR>", desc = "Find string in cwd" },
    { "<leader>fc", "<cmd>Telescope grep_string<CR>", desc = "Find string under cursor in cwd" },
    { "<leader>fo", "<cmd>Telescope buffers<CR>", desc = "Fuzzy find buffers" },
    { "<leader>fh", "<cmd>Telescope harpoon marks<CR>", desc = "Fuzzy find harpoon marks" },
  },
}
