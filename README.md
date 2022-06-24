
## devKit - An elegeant, modern, and cross-platform development environment

**  the developer experience that you deserve™️
<br>

It includes everything you'd need for modern web development on [macOSx]() and Linux [Debian](https://www.debian.org/)/[Ubuntu](https://ubuntu.com/). I specifically focused more on **Javascript** and **Python**, but you could easily configure this to focus on other languages/types of development such as php, go, etc.

As a dev 99% percent of my time is spent in:
  - IDE/Text Editor (vim/neovim, vscode... )
  - Terminal (alacritty, iterm2, hyper... )
  - Messaging (slack, discord... )
  - Browsers (firefox, chrome... )
 ### Philosophy
  - work smart not hard (through organization and automation)
  - do more with less
  - developer experience first
  - vim 

### Contents
  ###### Messaging
  - [Slack](https://slack.com/)
  ###### Browsers
  - [Firefox](https://www.mozilla.org/en-US/firefox/new/)
  - [Google Chrome](https://www.google.com/chrome/)
  ###### Terminal Emulator
  - [alacritty](https://github.com/alacritty/alacritty)
  ###### Text Editor/IDE 
  - [neovim](https://neovim.io/)
  - [lunar vim](https://www.lunarvim.org) - An opinionated superset of [neovim](https://neovim.io/) (which is a superset of [vim](https://www.vim.org/))
  ###### Window/Session Manager
  - [tmux](https://github.com/tmux/tmux/wiki)
  ###### Version Control
  - [git](https://git-scm.com/)
  ###### Http Client
  - [insomnia](https://insomnia.rest/)
  ###### Javascript/Typescript
  - [node](https://nodejs.org/en/)
  - [n](https://www.npmjs.com/package/n) (alternative to nvm)
  - [yarn](https://yarnpkg.com/)
  - [typescript](https://www.typescriptlang.org/)
  - [expo](https://docs.expo.dev/)
  ###### Python
  - [python](https://www.python.org/)
  - [pyenv](https://github.com/pyenv/pyenv)
  - [virtualenvwrapper](https://pypi.org/project/virtualenvwrapper/) (alternative to virtualenv)
  ###### Docker
   - [Docker](https://www.docker.com/)
  ###### OS Package Manager
  - OSx 
  - - [Homebrew](http://brew.sh/)
  - Linux (Debian/Ubuntu) 
  - - apt
  ###### Networking/SSH/Auth
   - wget
   - mcrypt
   - nmap 
   - gpg
   - ssh-copy-id
   - cowsay
   - readline
   - openssl
   - pv 

## To Do 

#### Neovim has no support for python venvs. 
[direnv](https://direnv.net/) + tmux seemes to be the solution for this. Configuring envs on a directory basis
setup: https://direnv.net/man/direnv.1.html

#### Vimhack dotfiles super dope similar to this 
https://api.mtr.pub/vimhack/dotfiles

Done
#### Tmux persist reboot
https://github.com/tmux-plugins/tmux-resurrect

#### Fork mac-dev-playbook
This pretty much looks exactly like what I want to do lol
https://github.com/geerlingguy/mac-dev-playbook
possible cons to this?
- only for macOS

Probably will want to fork that and devKit can be a "flavor" of that.
#### Automate devKit:
- [Ansible](https://www.ansible.com/resources/get-started) - for automating the deployment and maintainence of server configurations
- - Install alacritty
- - Install brew
- - - Install OhMyZsh
- - - Install python
- - - - Install pyenv
- - - - Install virtualenvwrapper - (alternative to virtualenv)
- - - Install node
- - - - Install n (alternative to nvm) 
- - - - Install typescript
- - - - Install yarn
- - - Install docker
- - - Install neovim
- - Install lunar vim
- - Install tmux
- - - Install tmux config
