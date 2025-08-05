echo ".zshrc"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="../../misc/Cobalt2-iterm/cobalt2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=12

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# https://wiki.zshell.dev/docs/getting_started/installation
typeset -A ZI
ZI[BIN_DIR]="${HOME}/.zi/bin"
source "${ZI[BIN_DIR]}/zi.zsh"

#zi ice has'eza' atinit'AUTOCD=1'
#zi light z-shell/zsh-eza

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages git docker sublime sudo zsh-eza git-prompt)
# ansible brew colorize common-aliases direnv dnf fig tmux zsh-navigation-tools zsh-syntax-highliting 

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/homebrew/bin/brew:$HOME/bin:$HOME/.dotfiles/scripte:"
source $ZSH/oh-my-zsh.sh

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# load functions 
[[ -f "$HOME/.dotfiles/functions" ]] && source "$HOME/.dotfiles/functions"
[[ -f "$HOME/.dotfiles/.commonrc" ]] && source "$HOME/.dotfiles/.commonrc"

if [[ $OSTYPE == 'darwin'* ]]; then
	# load private api-keys
	source .api-keys

	# ntfy
	eval "$(ntfy shell-integration)"
	export AUTO_NTFY_DONE_IGNORE="vim screen meld"

	# some homebrew things
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

	test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

	[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
	export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
	export HOMEBREW_AUTO_UPDATE_SECS="86400"
fi

# not saving history immediately
setopt noincappendhistory
setopt nosharehistory

. $HOME/.shellrc.load

# tmux starten
if [ "$TMUX" = "" ]; then exec tmux; fi
clear && udot

PATH="/Users/eragos/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/eragos/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/eragos/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/eragos/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/eragos/perl5"; export PERL_MM_OPT;

cd ~

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod go-rwX "$HOME/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
# examples here -> https://wiki.zshell.dev/ecosystem/category/-annexes
zicompinit # <- https://wiki.zshell.dev/docs/guides/commands
