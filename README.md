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

This repo is a store my personal Debian and macOS dotfiles. I use zsh as default shell with [Oh My ZSH](http://ohmyz.sh/) framework and the nice [Cobalt2](https://github.com/wesbos/Cobalt2-iterm.git) theme always inside a tmux session.

***Feel free to use it. Be creative to enhance it - and share it!***

**Warning:** These dotfiles reflect my personal settings. If you want to use it - wellcome! But review the settings and remove things, you don't want to need. Do not use it blindly. Use at your own risk!

![tmux and vim](screenshot/screenshot.png?raw=true  = 250x "tmux and vim")

## Features
* Dotfile handling via [dotfiles manager (dfm)](https://github.com/justone/dfm). Install, update and uninstall of dotfiles is quiet easy.
* All vim, tmux, ... plugins are included as git-submodule. So you have the lastest version everytime you update via *udot* command.
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git) with fantastic [Cobalt2](https://github.com/wesbos/Cobalt2-iterm.git) theme.
* Some helpfull [aliases](aliases) and [functions](functions) for [docker](https://www.docker.com/) and more.
* A useful [vim](http://www.vim.org/) configuration with [pathogen](https://github.com/tpope/vim-pathogen) plugin manager and some plugins: [syntastic](https://github.com/scrooloose/syntastic.git), [vim-airline](https://github.com/vim-airline/vim-airline.git), [vim-fugitive](https://github.com/tpope/vim-fugitive.git), [vim-tmux](https://github.com/tmux-plugins/vim-tmux)
* My favorite [tmux](https://tmux.github.io/) configuration and some tmux plugins: [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight.git), [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat), [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect), [tmux-urlview](https://github.com/tmux-plugins/tmux-urlview)
* and many more ;)
* For local system-specific changes (proxy settings, etc.), you can create *~.commonrc.local* 

## Installation

    $ cd ~
    $ git clone https://github.com/Eragos/dotfiles.git .dotfiles
    $ cd .dotfiles
    $ git submodule init
    $ git submodule update
    $ ./bin/dfm install 

## Update
For easy update the complete dotfiles (inlc. all submodules) you can use *udot* command:

	$ udot

## Dependencies
### macOS
* tmux: To show mem, cpu, load stats, you have to install tmux-mem-cpu-load (https://github.com/thewtex/tmux-mem-cpu-load)
* tmux-urlview: brew install urlview extract_url

## Feedback
Suggestions, corrections or improvements are welcome!

## tmux
**Tip:** On macOS you can configure the Caps-lock key acting as Ctrl key. So Caps-lock is just beside a and the prefix Ctrl+a is just a fingetip away :-)

Shortcut | Command
---------| ----------------------------------------------------
Ctrl+a r | reload tmux configuration
Ctrl+a R | reorder windows
Ctrl+a Ctrl+a | switch to last window
Ctrl+a \| | split pane verticaly
Ctrl+a - | split pane horizontaly
Ctrl+a a | save tmux session
Ctrl+a A | restore tmux session
Ctrl+a m | ask for a manpage and open it on a new pane
Ctrl+a M | ask for a manpage and open it on a new window
