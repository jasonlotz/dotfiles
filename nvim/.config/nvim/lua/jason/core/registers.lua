# @n - Macro used for copying notes from Granola to Obsidian using my preferred formatting.
local copy_notes_macro = vim.api.nvim_replace_termcodes("Go<CR>jkpi#jkjjd6wjkGd3kjk", true, true, true)
vim.fn.setreg("n", copy_notes_macro, "v")

