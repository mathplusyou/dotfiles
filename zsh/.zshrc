export GOPATH=$HOME/projects/go-workspace
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$HOME/go/bin:/usr/local/go/bin$PATH

# Loading/executing compinit
autoload -U compinit; compinit

# Get git info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{216}[%b]%F{103}[%r]%f'
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_

_comp_options+=(globdots) # With hidden files

# Moving compdump files out of to $ZSH/cache
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

### Prompt Config
PROMPT='%(?.%F{43}√.%F{red}?%?)%f %B%F{240}%~%f%b %# '

### ALIAS
alias tmux='TERM=xterm-256color tmux -2'
alias vim="nvim"

### Colors
export LSCOLOR="di=158"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}  
