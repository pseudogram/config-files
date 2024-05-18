# Add homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Set this variable as an env variable during install
CONFIG_FILE_DIRECTORY=$HOME/config-files


source $CONFIG_FILE_DIRECTORY/aliases.sh
source $CONFIG_FILE_DIRECTORY/env-vars.sh
source $CONFIG_FILE_DIRECTORY/utils.sh
# source $CONFIG_FILE_DIRECTORY/pyenv.sh
source $CONFIG_FILE_DIRECTORY/ohmyzsh.sh
source ~/work-config/macbook.zshrc


# Directory settings used for NX cache and/or NVM
# source $CONFIG_FILE_DIRECTORY/directorySettings.sh

addToPathFront $CONFIG_FILE_DIRECTORY/bin
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^s "tmux-session-finder\n"

# powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ASDF
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# rbenv laoding
eval "$(rbenv init - zsh)"

# dir env for automatically loading ENV Variables when in directories.
eval "$(direnv hook zsh)"

# source $CONFIG_FILE_DIRECTORY/fzf.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $CONFIG_FILE_DIRECTORY/fzf.sh
