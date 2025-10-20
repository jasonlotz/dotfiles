return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
  },
  keys = {
    { "<leader>wr", "<cmd>AutoSession restore<cr>", desc = "Restore session for cwd" }, -- restore last workspace session for current directory
    { "<leader>ws", "<cmd>AutoSession save<cr>", desc = "Save session for cwd" }, -- save last workspace session for current directory
  },
}
