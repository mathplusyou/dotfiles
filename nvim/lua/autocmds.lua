local augroup = vim.api.nvim_create_augroup("UserAutocmds", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Disable completion and LSP for sensitive files
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup,
  pattern = {
    "*/credentials",
    "*/.env",
    "*/.env.*",
    "*/.netrc",
    "*/.npmrc",
    "*/id_rsa",
    "*/id_ed25519",
    "*/.ssh/config",
  },
  callback = function(args)
    require("cmp").setup.buffer({ enabled = false })
    vim.diagnostic.enable(false, { bufnr = args.buf })
    for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf })) do
      vim.lsp.buf_detach_client(args.buf, client.id)
    end
    vim.bo[args.buf].undofile = false
  end,
})
