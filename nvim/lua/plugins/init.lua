-- All plugins managed via nvim's built-in vim.pack (requires Neovim 0.12+)
-- After first launch, versions are pinned in nvim-pack-lock.json

vim.pack.add({
  -- Colorscheme
  { src = "https://github.com/folke/tokyonight.nvim" },

  -- Fuzzy finder
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },

  -- Treesitter
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },

  -- LSP
  { src = "https://github.com/neovim/nvim-lspconfig" },

  -- Completions
  { src = "https://github.com/hrsh7th/nvim-cmp" },
  { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
  { src = "https://github.com/hrsh7th/cmp-buffer" },
  { src = "https://github.com/hrsh7th/cmp-path" },
  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/saadparwaiz1/cmp_luasnip" },

  -- File explorer
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

-- Load plugins into runtimepath
local plugins = {
  "tokyonight.nvim",
  "plenary.nvim",
  "telescope.nvim",
  "nvim-treesitter",
  "nvim-lspconfig",
  "nvim-cmp",
  "cmp-nvim-lsp",
  "cmp-buffer",
  "cmp-path",
  "LuaSnip",
  "cmp_luasnip",
  "nvim-tree.lua",
}

for _, plugin in ipairs(plugins) do
  vim.cmd("packadd " .. plugin)
end
