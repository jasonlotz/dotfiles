return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      show_buffer_close_icons = false,
      show_close_icon = false,
      name_formatter = function(buf)
        if buf.path:match("NvimTree_") then
          return "Explorer"
        end
        return buf.name
      end,
      diagnostics = "nvim_lsp",
      mode = "tabs",
      separator_style = "slant",
    },
  },
}
