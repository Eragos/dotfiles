<pre>
  ____      U  ___ u _____    _____              _     U _____ u ____    
 |  _"\      \/"_ \/|_ " _|  |" ___|    ___     |"|    \| ___"|// __"| u 
/| | | |     | | | |  | |   U| |_  u   |_"_|  U | | u   |  _|" <\___ \/  
U| |_| |\.-,_| |_| | /| |\  \|  _|/     | |    \| |/__  | |___  u___) |  
 |____/ u \_)-\___/ u |_|U   |_|      U/| |\u   |_____| |_____| |____/>> 
  |||_         \\   _// \\_  )(\\,-.-,_|___|_,-.//  \\  <<   >>  )(  (__)
 (__)_)       (__) (__) (__)(__)(_/ \_)-' '-(_/(_")("_)(__) (__)(__)     

</pre>

## Overview

This repo is a store my personal Debian and macOS dotfiles. 

***Feel free to use it. Be creative to enhance it - and share it!***

![tmux and vim](screenshot/screenshot.png?raw=true  = 250x "tmux and vim")

## Features
* Dotfile handling via [dotfiles manager (dfm)](https://github.com/justone/dfm).
* All vim, tmux, ... plugins are included as git-submodule. So you have the lastest version everytime you update via *udot* command.
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git) with fantastic [Cobalt2 theme](https://github.com/wesbos/Cobalt2-iterm.git).
* A useful vim configuration with pathogen plugin manager and some plugins: [syntastic](https://github.com/scrooloose/syntastic.git), [vim-airline](https://github.com/vim-airline/vim-airline.git), [vim-fugitive](https://github.com/tpope/vim-fugitive.git), [vim-tmux](https://github.com/tmux-plugins/vim-tmux)
* My favorite tmux configuration and some tmux plugins: [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight.git), [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat), [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect), [tmux-urlview](https://github.com/tmux-plugins/tmux-urlview)
* and many more ;)

## Installation

    $ cd ~
    $ git clone https://github.com/Eragos/dotfiles.git .dotfiles
    $ cd .dotfiles
    $ git submodule init
    $ git submodule update
    $ ./bin/dfm install 

## Update
	$ updot


## Dependencies
### macOS
* tmux: To show mem, cpu, load stats, you have to install tmux-mem-cpu-load (https://github.com/thewtex/tmux-mem-cpu-load)
* tmux-urlview: brew install urlview extract_url
