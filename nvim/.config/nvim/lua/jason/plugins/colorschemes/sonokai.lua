return {
  {
    "sainnhe/sonokai",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd([[let g:sonokai_transparent_background = 1]])
      -- vim.cmd([[colorscheme sonokai]])
    end,
  },
}
