colorscheme dracula

" Must have
set nocompatible

" Disable Bell (For my sanity)
set noeb vb t_vb=

" Use pathogen to manage vim plugins
call pathogen#infect()
call pathogen#helptags()

" Syntax Toggle
syntax on

" Enable plugins
filetype plugin indent on

" Tab/Paste Preferences
set pastetoggle=<F2>
set backspace=indent,eol,start
set softtabstop=2 shiftwidth=2 expandtab

" Move netrw to home dir
let g:netrw_home=$HOME

set t_ut=
set number 
set showcmd
set cursorline
set lazyredraw
set showmatch
set incsearch
set hlsearch

" Terraform specific configs
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" NERD Tree shortcut
map <C-n> :NERDTreeToggle<CR>

" Toggle Column limit warning
highlight ColorColumn ctermbg=magenta
function! <SID>CheckLineWidth()
  if !exists('w:checkline_enabled')
    let w:checkline_enabled = matchadd('ColorColumn', '\%>121v.\+', 100)
    echo "Highlighting Long Lines"
  else
    call matchdelete(w:checkline_enabled)
    unlet w:checkline_enabled
    echo "Unhighlighting Long Lines"
  endif
endfunction

" goisms
let g:go_disable_autoinstall = 1
let g:go_fmt_autosave=1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields=1
let g:go_highlight_types=1
" go-vim ignore warnings for vim < 7.4.1689
let g:go_version_warning = 0
autocmd BufRead,BufNewFile *.slide set filetype=slide

" Yaml
let g:syntastic_yaml_checkers = ['yamllint']
autocmd BufNewFile *.yaml,*.yml 0r ~/.vim/templates/skeleton.yaml

" Found at http://vimcasts.org/episodes/tidying-whitespace/
" Toggle Trailing Whitepsace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

function! <SID>fmt()
  if &ft == "json"
    "python35+ doesnt sort keys alpha by default
    "https://hg.python.org/cpython/rev/58a871227e5b
    %!if [ $(command -v python3) ];then python3 -m json.tool;else python -m json.tool;fi
    echo "fmt json"
  elseif &ft == "python"
    call Autopep8()
    echo "fmt python"
  elseif &ft == "cert"
    "set textwidth=64
    "call :gq
    "execute "normal! gq"
    echo "fmt cert [not implemented]"
  else
    echo "no filetype match for fmt"
  endif
endfunction

" Toggle Spell Checking
function! <SID>CheckSpelling()
  "If spell check is set then disable
  if &spell
    set nospell
    echo "Spell Checking Disabled"
  else
    set spell
    echo "Spell Checking Enabled"
  endif
endfunction

nnoremap <silent> <F8> :call <SID>fmt()<CR>
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <silent> <F7> :call <SID>CheckSpelling()<CR>

