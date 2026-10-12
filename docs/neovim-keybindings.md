# Neovim Keybindings & Commands

Leader key: **Space**

## Movement

| Key | Mode | Action |
|---|---|---|
| `j` / `k` | Normal | Move up/down (wrap-aware — moves visually on wrapped lines) |
| `Ctrl-d` | Normal | Half page down (centered) |
| `Ctrl-u` | Normal | Half page up (centered) |
| `n` / `N` | Normal | Next/previous search result (centered) |
| `w` | Normal | Jump forward one word |
| `b` | Normal | Jump backward one word |
| `e` | Normal | Jump to end of word |
| `0` | Normal | Jump to start of line |
| `$` | Normal | Jump to end of line |
| `gg` | Normal | Jump to top of file |
| `G` | Normal | Jump to bottom of file |
| `{` / `}` | Normal | Jump to prev/next paragraph |
| `%` | Normal | Jump to matching bracket |
| `f{char}` | Normal | Jump to next occurrence of {char} on line |
| `t{char}` | Normal | Jump to just before next {char} on line |

## Editing

| Key | Mode | Action |
|---|---|---|
| `Space p` | Visual | Paste over selection without yanking replaced text |
| `Space x` | Normal/Visual | Delete without yanking |
| `J` | Normal | Join lines (keeps cursor in place) |
| `Alt-j` | Normal | Move current line down |
| `Alt-k` | Normal | Move current line up |
| `Alt-j` | Visual | Move selection down |
| `Alt-k` | Visual | Move selection up |
| `<` / `>` | Visual | Indent left/right (keeps selection) |
| `u` | Normal | Undo |
| `Ctrl-r` | Normal | Redo |
| `.` | Normal | Repeat last change |
| `ciw` | Normal | Change inner word |
| `ci"` | Normal | Change inside quotes |
| `di(` | Normal | Delete inside parentheses |
| `yy` | Normal | Yank (copy) line |
| `dd` | Normal | Delete line |
| `cc` | Normal | Change entire line |
| `o` / `O` | Normal | New line below/above |

## Search

| Key | Mode | Action |
|---|---|---|
| `/` | Normal | Search forward |
| `?` | Normal | Search backward |
| `*` | Normal | Search word under cursor |
| `Space c` | Normal | Clear search highlights |

## Windows

| Key | Mode | Action |
|---|---|---|
| `Ctrl-h` | Normal | Move to left window (also works to jump to/from NvimTree) |
| `Ctrl-j` | Normal | Move to bottom window |
| `Ctrl-k` | Normal | Move to top window |
| `Ctrl-l` | Normal | Move to right window (also works to jump to/from NvimTree) |
| `Space sv` | Normal | Split vertically |
| `Space sh` | Normal | Split horizontally |
| `Ctrl-Up` | Normal | Increase window height (intercepted by tmux — use `:resize` instead) |
| `Ctrl-Down` | Normal | Decrease window height (intercepted by tmux — use `:resize` instead) |
| `Ctrl-Left` | Normal | Decrease window width (intercepted by tmux — use `:vertical resize` instead) |
| `Ctrl-Right` | Normal | Increase window width (intercepted by tmux — use `:vertical resize` instead) |

## Buffers

| Key | Mode | Action |
|---|---|---|
| `Space bn` | Normal | Next buffer |
| `Space bp` | Normal | Previous buffer |
| `Space bd` | Normal | Close current buffer |
| `Space fb` | Normal | List all open buffers (Telescope — searchable) |

## Telescope (Fuzzy Finder)

| Key | Mode | Action |
|---|---|---|
| `Space ff` | Normal | Find files in project |
| `Space fg` | Normal | Live grep (search text across all files) |
| `Space fb` | Normal | Find open buffers |
| `Space fh` | Normal | Search help tags |
| `Space fr` | Normal | Recent files |

Inside Telescope:
| Key | Action |
|---|---|
| `Ctrl-n` / `Ctrl-p` | Navigate results up/down |
| `Enter` | Open selected file |
| `Ctrl-x` | Open in horizontal split |
| `Ctrl-v` | Open in vertical split |
| `Esc` | Close Telescope |

## NvimTree (File Explorer)

| Key | Mode | Action |
|---|---|---|
| `Space e` | Normal | Toggle file tree sidebar |

Inside NvimTree:
| Key | Action |
|---|---|
| `Enter` or `o` | Open file / expand folder |
| `v` | Open file in vertical split |
| `s` | Open file in horizontal split |
| `Tab` | Preview file (open without leaving tree) |
| `a` | Create new file (add `/` at end for directory) |
| `d` | Delete file |
| `r` | Rename file |
| `x` | Cut file |
| `c` | Copy file |
| `p` | Paste file |
| `y` | Copy file name |
| `Y` | Copy relative path |
| `gy` | Copy absolute path |
| `R` | Refresh tree |
| `H` | Toggle hidden/dotfiles |
| `I` | Toggle gitignored files |
| `E` | Expand all folders |
| `W` | Collapse all folders |
| `-` | Navigate up to parent directory |
| `q` | Close NvimTree |

Resizing NvimTree:
| Command | Action |
|---|---|
| `:NvimTreeResize 20` | Set tree width to 20 |
| `:NvimTreeResize +5` | Grow tree by 5 |
| `:NvimTreeResize -5` | Shrink tree by 5 |

## LSP (Active When a Language Server is Attached)

| Key | Mode | Action |
|---|---|---|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gr` | Normal | Go to references |
| `gi` | Normal | Go to implementation |
| `K` | Normal | Hover documentation (show type info/docs in popup) |
| `Space rn` | Normal | Rename symbol across project |
| `Space ca` | Normal | Code action (quick fixes, refactors) |
| `Space ds` | Normal | List document symbols |
| `[d` | Normal | Jump to previous diagnostic (error/warning) |
| `]d` | Normal | Jump to next diagnostic |
| `Space td` | Normal | Toggle diagnostics on/off |

## Autocomplete (nvim-cmp)

| Key | Mode | Action |
|---|---|---|
| `Tab` | Insert | Select next completion / expand snippet |
| `Shift-Tab` | Insert | Select previous completion |
| `Ctrl-n` | Insert | Next completion item |
| `Ctrl-p` | Insert | Previous completion item |
| `Ctrl-Space` | Insert | Trigger completion manually |
| `Enter` | Insert | Confirm selected completion |
| `Ctrl-e` | Insert | Dismiss completion menu |
| `Ctrl-d` | Insert | Scroll docs down (in completion popup) |
| `Ctrl-u` | Insert | Scroll docs up |

## Utility

| Key | Mode | Action |
|---|---|---|
| `Space pa` | Normal | Copy full file path to clipboard |

## Useful Built-in Commands

| Command | Action |
|---|---|
| `:w` | Save file |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:qa` | Quit all windows |
| `:e path/to/file` | Open a file |
| `:%s/old/new/g` | Find and replace in entire file |
| `:s/old/new/g` | Find and replace on current line |
| `:set wrap` / `:set nowrap` | Toggle line wrapping |
| `:LspInfo` | Show active language servers |
| `:LspRestart` | Restart language servers |
| `:checkhealth` | Diagnose Neovim setup issues |
| `:NvimTreeResize {n}` | Resize file tree to width n |

## Notes

- **Tmux intercepts `Ctrl-Arrow`** keys, so window resize bindings don't work inside tmux. Use the `:resize` and `:vertical resize` commands instead.
- **Option key** is mapped as Alt in Ghostty (`macos-option-as-alt = true`), so `Alt-j`/`Alt-k` for moving lines uses Option+j/k on Mac.
