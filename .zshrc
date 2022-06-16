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
  export EDITOR='mvim'
fi

# Reload oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Reload NVM
source /usr/local/opt/nvm/nvm.sh

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Aliases
# alias lvim to `vim`
alias vim="/Users/brook/.local/bin/lvim"
