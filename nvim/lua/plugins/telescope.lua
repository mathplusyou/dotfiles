require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/", "DerivedData", ".build" },
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { preview_width = 0.55 },
    },
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-d>"] = require("telescope.actions").delete_buffer,
        },
        n = {
          ["dd"] = require("telescope.actions").delete_buffer,
        },
      },
    },
  },
})
