return {
  "rcarriga/nvim-notify",
  event = "BufRead",
  config = function()
    require("notify").setup({
      -- Animation style
      stages = "fade_in_slide_out",

      -- Default timeout for notifications
      timeout = 5000,

      -- For stages that change opacity this is treated as the highlight behind the window
      background_colour = "#000000",
    })
  end,
}
