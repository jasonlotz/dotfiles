return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      debug = true,
    },
    branch = "canary",
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
