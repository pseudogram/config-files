CONFIG_FILE_DIRECTORY="$(dirname $0)"
source $CONFIG_FILE_DIRECTORY/aliases.sh
source $CONFIG_FILE_DIRECTORY/env-vars.sh
source $CONFIG_FILE_DIRECTORY/fzf.sh

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

VIMRC=$HOME/.vimrc
if test ! -f "$VIMRC"; then
  CONF_VIMRC=$CONFIG_FILE_DIRECTORY/vim/my.vimrc
  echo ".vimrc not found in $HOME. Creating softlink to $CONF_VIMRC"
  ln -s $CONF_VIMRC $VIMRC
fi

NVIM_CONFIG_DIR=$HOME/.config/nvim
NVIMRC=$NVIM_CONFIG_DIR/init.vim
if test ! -f "$NVIMRC"; then
  mkdir -p $NVIM_CONFIG_DIR
  CONF_VIMRC=$CONFIG_FILE_DIRECTORY/vim/my.vimrc
  echo "nvim init.vim not found in $HOME/.config/nvim. Creating softlink to $CONF_VIMRC"
  ln -s $CONF_VIMRC $NVIMRC
fi



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
PATH=$(pyenv root)/shims:$PATH

