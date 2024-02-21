return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  -- stylua: ignore
  keys = {
    { "<leader>a", function() require("harpoon"):list():append() end, desc = "Harpoon: append", },
    { "<leader>A", function() require("harpoon"):list():remove() end, desc = "Harpoon: remove", },
    { "<leader>;", function() require("harpoon"):list():next() end, desc = "Harpoon: next", },
    { "<leader>,", function() require("harpoon"):list():prev() end, desc = "Harpoon: previous", },
    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon to file 1", },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon to file 2", },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon to file 3", },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon to file 4", },
    { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "Harpoon to file 5", },
    { "<leader>h", function() local Harpoon = require("harpoon") Harpoon.ui:toggle_quick_menu(Harpoon:list()) end, desc = "Harpoon: quick menu", },
    { "<leader>fh", "<cmd>Telescope harpoon marks<cr>", desc = "Fuzzy find harpoon marks" },
  },
}
