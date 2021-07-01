# Custom path folder
PATH=$PATH:$HOME/.bin

case $- in
    *i*) ;;
      *) return;;
esac

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Set vi mode
set -o vi
stty -ixon

# Append to the history file, don't overwrite it
shopt -s histappend
shopt -s expand_aliases

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1) set blank or negative to infinite
HISTSIZE=9000000
HISTFILESIZE=-9000000

# Don't put duplicate lines in sequence or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups

# Put time stamp on bash history
export HISTTIMEFORMAT="%d/%m/%y %T "

# Make less a default man pager
export MANPAGER="less"

# Prevent less to populate history
export LESSHISTFILE="-"

# Remove CD case sensitive
shopt -s cdspell

# Cd without use prefix
shopt -s autocd

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# match all files and zero or more directories and subdirectories.
#ashopt -s globstar
