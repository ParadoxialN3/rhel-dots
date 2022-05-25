# This is my humble zsh configuration, with my set of plugins and my prompt. Has some creature 
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

# ZSH hotkeys
bindkey '^ ' autosuggest-accept


