return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  -- stylua: ignore
  keys = {
    { "<leader>a", function() require("harpoon"):list():append() end, desc = "harpoon append", },
    { "<leader>A", function() require("harpoon"):list():remove() end, desc = "harpoon remove", },
    { "<leader>;", function() require("harpoon"):list():next() end, desc = "harpoon next", },
    { "<leader>,", function() require("harpoon"):list():prev() end, desc = "harpoon previous", },
    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
    { "<leader>h", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
    { "<leader>fh", "<cmd>Telescope harpoon marks<CR>", desc = "Fuzzy find harpoon marks" },
  },
}
