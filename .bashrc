#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

export VISUAL=code
export EDITOR=nvim

# config
export BROWSER="chrome"

# directories
export REPOS="$HOME/Repos"
export GITUSER="jman793"
export DOTFILES="$REPOS/dotfiles"
export ICLOUD="$HOME/icloud"
export CONFIG="$HOME/.config"

#Add Ghostty to $PATH
export PATH="/Applications/Ghostty.app/Contents/MacOS:$PATH"

# Add brew to $PATH
export PATH="/opt/homebrew/bin:$PATH"

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

# ls
alias ls='ls --color=auto'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias sv='sudoedit'
alias t='tmux'
alias e='exit'

# Source tmux
alias sourceTmux="tmux source $CONFIG/tmux/.tmux.conf"

# Source bash
alias sbrc="source ~/.bashrc"

# Search Aliases 
alias fman="compgen -c | fzf | xargs man"
alias frepo="ls $REPOS | fzf"

# Naviation Aliases 
alias grepo='cd $REPOS/"$(frepo)"'


if [[ "$OSTYPE" == "darwin"* ]]; then
	# brew bash completion
	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

eval "$(starship init bash)"
