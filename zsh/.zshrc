# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.npm-global/bin

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    macos
    npm
    zsh-syntax-highlighting
    zsh-autosuggestions
    vi-mode
    asdf
)

# Enable vi mode
bindkey -v

# vi-mode config
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode
MODE_INDICATOR="%F{white}+%f"
INSERT_MODE_INDICATOR="%F{yellow}+%f"
VI_MODE_SET_CURSOR=true

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi

# Ansible Playbook CLI auto-complete
eval $(register-python-argcomplete ansible)
eval $(register-python-argcomplete ansible-config)
eval $(register-python-argcomplete ansible-console)
eval $(register-python-argcomplete ansible-doc)
eval $(register-python-argcomplete ansible-galaxy)
eval $(register-python-argcomplete ansible-inventory)
eval $(register-python-argcomplete ansible-playbook)
eval $(register-python-argcomplete ansible-pull)
eval $(register-python-argcomplete ansible-vault)

### Aliases ###
#Neovim
# Shortcut to open lvim
alias v="lvim"
# alias all vims and noevims to lunar vim
alias nvim="lvim"
alias vim="lvim"

### Tmux ###

# Attach to last session 
alias ta="tmux a"
# Kill server
alias tk="tmux kill-server"
# Create new session with the name option
alias tn="tmux new -s"

# tmuxinator
alias mux="tmuxinator"

### Sourcing Files ###
# Reload oh-my-zsh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export PATH="/Users/brook/.local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
