# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Git Prompt
BRANCH_="\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
# The Command Prompt
# The colors are preceded by an escape sequence \e and defined by a color value, composed of [style;color+m] and wrapped in an escaped [] sequence.
RESET_="\[\e[0m\]"
RED_="\[\e[0;31m\]"
CYAN_="\[\e[0;36m\]"
PS1="[ $CYAN_\W$RED_ $BRANCH_$RESET_ ] % "

#ls alias to display colors
alias ls="ls -G"

## RVM setup

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
