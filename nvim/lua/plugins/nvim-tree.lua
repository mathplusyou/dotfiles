require("nvim-tree").setup({
  view = {
    width = 25,
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    group_empty = true,
  },
})

vim.keymap.set("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle NvimTree" })
