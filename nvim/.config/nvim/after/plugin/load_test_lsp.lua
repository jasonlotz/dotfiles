local client = vim.lsp.start_client({
  name = "lsp-sandbox",
  cmd = { "/Users/jason/Workspaces/lsp-sandbox/main" },
})

if not client then
  vim.notify("Failed to start client", vim.log.levels.ERROR)
  return
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
