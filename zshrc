# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Fig pre block. Keep at the top of this file.
# [[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
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
source $CONFIG_FILE_DIRECTORY/utils.sh
# source $CONFIG_FILE_DIRECTORY/nvm.zsh
source $CONFIG_FILE_DIRECTORY/fzf.sh
source $CONFIG_FILE_DIRECTORY/pyenv.sh
source $CONFIG_FILE_DIRECTORY/ohmyzsh.sh
source $CONFIG_FILE_DIRECTORY/directorySettings.sh

addToPathFront $CONFIG_FILE_DIRECTORY/bin
bindkey -s ^f "tmux-sessionizer\n"

# powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fig post block. Keep at the bottom of this file.
#[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
