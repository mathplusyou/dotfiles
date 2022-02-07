local options = {
  backup = false,                          -- no backup files created
  backspace = "indent,eol,start",          -- allow backspacing over indent/line breaks/start of instert
  clipboard = "unnamedplus",               -- let neovim access system clipboard
  cmdheight = 2,                           -- more space in neovum command line
  completeopt = "menuone,noselect",        -- needed for cmp (need to fully understand this)
  conceallevel = 0,
  cursorline = true,                       -- highlight the current line
  expandtab = true,                        -- nvim will place spaces instead of tabs                  
  fileencoding = "utf-8",                  -- encoding
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- do no set relative numbered lines
  scrolloff = 8,                           -- minum # of screen lines to keep above/below the cursor
  sidescrolloff = 8,                       -- min # of columns to scroll horizontally. Need because wrap is off
  shiftwidth = 2,                          -- how many shiftwidth columns of whitespace there will be
  showmode = false,                        -- nvim won't display things like -- INSERT --
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- overrides ignorecase option if pattern has uppercase
  smartindent = true,                      -- autoindent when starting a new line
  softtabstop = 2,                         -- insert/delete N whitespace when tab/backspace pressed
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- no swaps
  termguicolors = true,                    -- set term gui colors
  timeoutlen = 500,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  tabstop = 2,                             -- insert 2 spaces for a tab
  undofile = false,                        -- no persistent undo
  updatetime = 1000,                       -- faster right to swap
  wrap = false,                            -- display lines as one long line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"       -- Allow keys to move cursor to beg/end of next/previous line

-- vim terraform commands
vim.cmd "let g:terraform_fmt_on_save=1"
vim.cmd "let g:terraform_align=1"
