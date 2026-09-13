-- Strip Granola's trailing footer ("---" / blank / "Chat with meeting transcript: <url>")
-- when it is there. Granola does not always append it, so this is a no-op otherwise
-- rather than eating the last few lines of the note.
local function trim_granola_footer()
	local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)

	local last = #lines
	while last > 0 and lines[last]:match("^%s*$") do
		last = last - 1
	end
	if last == 0 or not lines[last]:match("^%s*Chat with meeting transcript:") then
		return
	end

	local first = last
	local prev = first - 1
	while prev > 0 and lines[prev]:match("^%s*$") do
		prev = prev - 1
	end
	if prev > 0 and lines[prev]:match("^%s*%-%-%-+%s*$") then
		first = prev
	end
	while first > 1 and lines[first - 1]:match("^%s*$") do
		first = first - 1
	end

	vim.api.nvim_buf_set_lines(0, first - 1, #lines, false, {})
end

vim.api.nvim_create_user_command("GranolaTrimFooter", trim_granola_footer, {})

-- @n - Macro used for copying notes from Granola to Obsidian using my preferred formatting.
-- Go<CR>jk           append a blank line at the end of the note
-- p                  paste the Granola note (cursor lands on its "# Title" line)
-- mz                 mark the top of the pasted block
-- jjd6w              strip the date prefix off the "Fri, 28 Aug 26 · Name" byline
-- :GranolaTrimFooter delete the trailing "---" / "Chat with meeting transcript" footer, if present
-- :'z,$s/...         demote every heading one level: # -> ##, ## -> ###, and so on
local copy_notes_macro = vim.api.nvim_replace_termcodes(
	[[Go<CR>jkpmzjjd6w:GranolaTrimFooter<CR>:'z,$s/^#\+ /#&/e<CR>]],
	true,
	true,
	true
)
vim.fn.setreg("n", copy_notes_macro, "v")
