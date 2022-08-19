# Set this variable as an env variable during install
CONFIG_FILE_DIRECTORY=$HOME/config-files

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source $CONFIG_FILE_DIRECTORY/aliases.sh
source $CONFIG_FILE_DIRECTORY/env-vars.sh

# functions
batless() {
  bat --color=always $1|less -R 
}

# for i in `find -L $CONFIG_FILE_DIRECTORY/bin -type f`; do
#   echo $i
#   source $i
# done

addToPathFront() {
  if [[ "$PATH" != *"$1"*  ]]; then
    export PATH=$1:$PATH
  fi
}


addToPathFront $CONFIG_FILE_DIRECTORY/bin
# # For NVM configurations if using
source $CONFIG_FILE_DIRECTORY/nvm.zsh


# Make and cd into directory
# https://unix.stackexchange.com/a/125386
mcd ()
{
  mkdir -p -- "$1" &&
    cd -P -- "$1"
  }

bindkey -s ^f "tmux-sessionizer\n"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Set Python version
# https://opensource.com/article/20/4/pyenv
# https://realpython.com/intro-to-pyenv/#installing-pyenv
#
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'


#  Use fzf keybindings and such
source $CONFIG_FILE_DIRECTORY/fzf.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="gozilla"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# powerlevel10k configuration
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

