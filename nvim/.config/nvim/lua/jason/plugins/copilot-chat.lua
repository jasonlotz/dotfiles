return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      debug = true,
    },
    branch = "canary",
    keys = {
      { "<leader>cc", ":CopilotChat ", desc = "CopilotChat: ask a question" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = "x", desc = "CopilotChat: Explain the selected code" },
      {
        "<leader>ct",
        "<cmd>CopilotChatTests<cr>",
        mode = "x",
        desc = "CopilotChat: Generate tests for the selected code",
      },
      {
        "<leader>cf",
        "<cmd>CopilotChatFix<cr>",
        mode = "x",
        desc = "CopilotChat: Fix the selected code",
      },
      {
        "<leader>cd",
        "<cmd>CopilotChatDocs<cr>",
        mode = "x",
        desc = "CopilotChat: Generate docs for the selected code",
      },
      {
        "<leader>co",
        "<cmd>CopilotChatOptimize<cr>",
        mode = "x",
        desc = "CopilotChat: Optimize the selected code",
      },
      {
        "<leader>cr",
        "<cmd>CopilotChatReview<cr>",
        mode = "x",
        desc = "CopilotChat: Review the selected code",
      },
    },
  },
}
