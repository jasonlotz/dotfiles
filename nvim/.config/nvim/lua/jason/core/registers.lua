-- @n - Macro used for copying notes from Granola to Obsidian using my preferred formatting.
-- Go<CR>jk   append a blank line at the end of the note
-- p          paste the Granola note (cursor lands on its "# Title" line)
-- mz         mark the top of the pasted block
-- jjd6w      strip the date prefix off the "Fri, 28 Aug 26 · Name" byline
-- Gd3k       delete the trailing "---" / "Chat with meeting transcript" footer
-- :'z,$s/... demote every heading one level: # -> ##, ## -> ###, and so on
local copy_notes_macro = vim.api.nvim_replace_termcodes(
	[[Go<CR>jkpmzjjd6wGd3k:'z,$s/^#\+ /#&/e<CR>]],
	true,
	true,
	true
)
vim.fn.setreg("n", copy_notes_macro, "v")
