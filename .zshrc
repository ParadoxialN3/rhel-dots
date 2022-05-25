# Paths
export PATH="$HOME/.cargo/bin:$PATH"

# History in histfile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Sourcing Plugins to zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# My Aliases
alias vim="nvim"
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# ZSH hotkeys
bindkey '^ ' autosuggest-accept


