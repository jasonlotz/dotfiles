return {
  "rmagatti/auto-session",
  opts = {
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
  },
  keys = {

    { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" }, -- restore last workspace session for current directory
    { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for cwd" }, -- save last workspace session for current directory
  },
}
