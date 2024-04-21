#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

export VISUAL=nvim
export EDITOR=nvim

# config
export BROWSER="chrome"

# directories
export REPOS="$HOME/Repos"
export GITUSER="jman793"
export DOTFILES="$REPOS/dotfiles"
export ICLOUD="$HOME/icloud"
export CONFIG="$HOME/.config"

# Add brew to $PATH
export PATH="/opt/homebrew/bin:$PATH"

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

# Github Repos
alias dot='cd $REPOS/dotfiles'
alias repos='cd $REPOS'

alias c="clear"
alias icloud="cd \$ICLOUD"

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias sv='sudoedit'
alias t='tmux'
alias e='exit'

# Source tmux
alias sourceTmux="tmux source $CONFIG/tmux/.tmux.conf"

# git
alias lg='lazygit'

# ricing
alias et='v ~/.config/awesome/themes/powerarrow/theme-personal.lua'
alias ett='v ~/.config/awesome/themes/powerarrow-dark/theme-personal.lua'
alias er='v ~/.config/awesome/rc.lua'
alias eb='v ~/.bashrc'
alias ev='cd ~/.config/nvim/ && v init.lua'
alias sbr='source ~/.bashrc'
alias s='startx'

if [[ "$OSTYPE" == "darwin"* ]]; then
	source "$HOME/.fzf.bash"
	# brew bash completion
	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi
