local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-s>j", ":resize -2<CR>", opts)
keymap("n", "<C-s>k", ":resize +2<CR>", opts)
keymap("n", "<C-s>l", ":vertical resize -2<CR>", opts)
keymap("n", "<C-s>h", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- Don't have this working yet on MAC
-- dont have access to alt meta key with alacritty
keymap("v", "A-j", ":m .+1<CR>==", opts)
keymap("v", "A-k", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- BufferLine
keymap("n", "<Leader>bf", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<Leader>bb", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<Leader>bd", ":Bdelete<CR>", opts)
