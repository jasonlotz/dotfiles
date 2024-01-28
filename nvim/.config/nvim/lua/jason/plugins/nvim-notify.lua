return {
  "rcarriga/nvim-notify",
  event = "BufRead",
  opts = {
    -- Animation style
    stages = "fade_in_slide_out",

    -- Default timeout for notifications
    timeout = 3000,

    -- For stages that change opacity this is treated as the highlight behind the window
    background_colour = "#000000",

    -- Max height
    max_height = function()
      return math.floor(vim.o.lines * 0.50)
    end,

    -- Max width
    max_width = function()
      return math.floor(vim.o.columns * 0.50)
    end,

    -- Default layout config
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all notifications",
    },
  },
}
