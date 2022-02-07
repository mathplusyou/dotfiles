local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins

return packer.startup(function(use)
--My plugins here
use "wbthomason/packer.nvim"       -- Have packer manage itself
use "nvim-lua/popup.nvim"          -- An implementation of the Popup API from vim in Neovim
use "nvim-lua/plenary.nvim"        -- Useful lua functions used by lots of plugins
use "windwp/nvim-autopairs"        -- Autopairs, integrates with both cmp and treesitter
use { "kyazdani42/nvim-tree.lua",     -- Popular nvim file explorer
       requires = {'kyazdani42/nvim-web-devicons' },
       config = [[require('mathplusyou.config.nvim-tree')]]
    }
use "numToStr/Comment.nvim"        -- Easy commenting
use "kyazdani42/nvim-web-devicons" -- icons

-- CMP Plugins
use { 
  "hrsh7th/nvim-cmp", -- The completion plugin
  config = [[require('mathplusyou.config.cmp')]]
}
use "hrsh7th/cmp-buffer" -- buffer completions
use "hrsh7th/cmp-path" -- path completions
use "hrsh7th/cmp-nvim-lsp" -- cmp for LSP
use "hrsh7th/cmp-cmdline" -- cmdline completions
use "saadparwaiz1/cmp_luasnip" -- snippet completions

-- buffer
use {
  'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = [[require('mathplusyou.config.bufferline')]]
}
use 'moll/vim-bbye' -- prevents nvim from closing when buffer is closed while using nvim tree
    

-- Snippets
use "L3MON4D3/LuaSnip"              --snippet engine
use "rafamadriz/friendly-snippets"  -- bunch of snippets

-- LSP
use "neovim/nvim-lspconfig" -- enable LSP
use "williamboman/nvim-lsp-installer" -- simple to use language server installer

-- Telescope
use "nvim-telescope/telescope.nvim"

-- Treesitter
use {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
}

-- Terraform
use 'hashivim/vim-terraform'

-- Dashboard

use { "goolord/alpha-nvim",
      config = [[require('mathplusyou.config.alpha')]]
    }

-- color
use "shaunsingh/moonlight.nvim" 

-- status bar
use {
  "nvim-lualine/lualine.nvim",
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = [[require('mathplusyou.config.lualine')]]
}

-- keys
use {
  "folke/which-key.nvim",
    config = [[require('mathplusyou.config.whichkey')]]
  }

-- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
if PACKER_BOOTSTRAP then
  require("packer").sync()
end
end) 
