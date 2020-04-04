# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Git Prompt
# 2>/dev/null to suppress the output
# `xargs echo -n` to remove all whitespace in output
BRANCH_="\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
DIFF_NUMSTAT_="\$(if [ -e "./.git" ]; then git diff --numstat 2>/dev/null | wc -l | xargs echo -n; fi)"
DIFF_CACHED_NUMSTAT_="\$(if [ -e "./.git" ]; then git diff --cached --numstat 2>/dev/null | wc -l | xargs echo -n; fi)"
# The Command Prompt
# The colors are preceded by an escape sequence \e and defined by a color value, composed of [style;color+m] and wrapped in an escaped [] sequence.
# change [0 | 1] below for other shades of same color
RESET_="\[\e[0m\]"
RED_="\[\e[0;31m\]"
CYAN_="\[\e[0;36m\]"
YELLOW_="\[\e[1;33m\]"
GREEN_="\[\e[1;32m\]"
PURPLE_="\[\e[1;35m\]"
BLUE_="\[\e[1;34m\]"
TIME="\[\$(date +%H:%M)\]"
PS1="[ $PURPLE_$TIME $CYAN_\W$YELLOW_ $BRANCH_ $RED_$DIFF_NUMSTAT_$RESET_ $GREEN_$DIFF_CACHED_NUMSTAT_$RESET_ ] % "

#ls alias to display colors
alias ls="ls -G"
