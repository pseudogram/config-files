# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="gozilla"

plugins=(git nvm nx-completion)
zstyle ':omz:plugins:nvm' lazy true

source $ZSH/oh-my-zsh.sh
