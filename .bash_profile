
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# path
PATH=$PATH:$HOME/bin:

# colors
export CLICOLOR=1
export LSCOLORS=dxfxcxbxegedabagacad

# history
export HISTCONTROL=erasedups
export HISTFILESIZE=10000
export HISTSIZE=10000
shopt -s histappend

# prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#defaults
export EDITOR=vim

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# load functions 
[[ -f "$HOME/.dotfiles/functions" ]] && source "$HOME/.dotfiles/functions"

[[ -f "$HOME/.dotfiles/.commonrc" ]] && source "$HOME/.dotfiles/.commonrc"
