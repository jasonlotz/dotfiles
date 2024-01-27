-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Highlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
  end,
})

-- not sure why, markdown doesn't seem to respect the settings in options.lua, so resetting them here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
    vim.opt.shiftwidth = 2 -- 2 spaces for indent width
    vim.opt.expandtab = true -- expand tab to spaces
    vim.opt.autoindent = true -- copy indent from current line when starting new one
  end,
})
