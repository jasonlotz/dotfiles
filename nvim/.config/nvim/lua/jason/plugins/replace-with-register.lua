return {
  "inkarkat/vim-ReplaceWithRegister",
  lazy = false,
  config = function(_, opts)
    local api = vim.api
    local cmd = vim.cmd

    local function map(mode, lhs, rhs, opts)
      local options = { noremap = true }
      if opts then
        options = vim.tbl_extend("force", options, opts)
      end
      api.nvim_set_keymap(mode, lhs, rhs, options)
    end

    map("n", "<leader>r", "<Plug>ReplaceWithRegisterOperator")
    map("n", "<leader>rr", "<Plug>ReplaceWithRegisterLine")
    map("v", "<leader>r", "<Plug>ReplaceWithRegisterVisual")
  end,
}
