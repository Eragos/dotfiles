autoload -Uz compinit promptinit
compinit
promptinit

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m:%{$fg[yellow]%}%~%{$reset_color%}$ "

# load functions
[[ -f "$HOME/.dotfiles/functions" ]] && source "$HOME/.dotfiles/functions"
[[ -f "$HOME/.dotfiles/.commonrc" ]] && source "$HOME/.dotfiles/.commonrc"
