# Paths and some other stuff
set $EDITOR='nvim'
set $TERM='gnome-terminal'

if [ -d "$HOME/.cargo/bin" ] ;   
	then PATH="$HOME/.cargo/bin:$PATH" 
fi

if [ -d "/home/linuxbrew/bin" ] ;
	then PATH="/home/linuxbrew/bin:$PATH"
fi

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
alias vi="nvim"
alias viminit="nvim $HOME/.config/nvim/init.vim"

## This is assuming you install lsd from source like how I prefer
if [ PATH="$HOME/.cargo/bin:$PATH" ] ;
	then 
	alias ls="lsd"
	alias la="lsd -a"
	alias l="lsd -l"
	alias lla="lsd -la"
fi

# ZSH hotkeys
bindkey '^ ' autosuggest-accept

