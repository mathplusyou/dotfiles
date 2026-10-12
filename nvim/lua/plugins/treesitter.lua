require("nvim-treesitter").setup({
  ensure_installed = {
    "swift",
    "python",
    "typescript",
    "tsx",
    "javascript",
    "hcl",
    "terraform",
    "lua",
    "json",
    "yaml",
    "html",
    "css",
    "bash",
    "markdown",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
