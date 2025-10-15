-- Set your preferred colorscheme here - just change this variable to switch themes
local colorscheme = "catppuccin" -- Options: catppuccin, tokyonight, gruvbox, everforest, kanagawa, nightfly, sonokai

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = colorscheme == "catppuccin",
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        float = {
          transparent = true,
          solid = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    enabled = colorscheme == "tokyonight",
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  {
    "morhetz/gruvbox",
    priority = 1000,
    enabled = colorscheme == "gruvbox",
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "sainnhe/everforest",
    priority = 1000,
    enabled = colorscheme == "everforest",
    config = function()
      vim.cmd.colorscheme("everforest")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    enabled = colorscheme == "kanagawa",
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000,
    enabled = colorscheme == "nightfly",
    config = function()
      vim.cmd.colorscheme("nightfly")
    end,
  },
  {
    "sainnhe/sonokai",
    priority = 1000,
    enabled = colorscheme == "sonokai",
    config = function()
      vim.cmd([[let g:sonokai_transparent_background = 1]])
      vim.cmd.colorscheme("sonokai")
    end,
  },
}
