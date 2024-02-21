-- Note:
-- Before install:
-- pip install python-dotenv requests pynvim==0.5.0 prompt-toolkit
-- pip install tiktoken
-- After install:
-- :UpdateRemotePlugins
return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
    },
    build = function()
      vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,
    event = "VeryLazy",
    keys = {
      { "<leader>cp", "<cmd>Copilot<cr>", desc = "Copilot: recommendations based on cursor location" },
      { "<leader>cc", ":CopilotChat ", desc = "CopilotChat:  ask question about code in register" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat: explain code in register" },
      { "<leader>ct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat: generate tests for code in register" },
      {
        "<leader>cv",
        ":CopilotChatVisual ",
        mode = "x",
        desc = "CopilotChat: ask question for selected code in vertical split",
      },
      {
        "<leader>cw",
        "<cmd>CopilotChatInPlace<cr>",
        mode = "x",
        desc = "CopilotChat: ask question for selected code in pop-up window",
      },
    },
  },
}
