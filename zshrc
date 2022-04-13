
CONFIG_FILE_DIRECTORY="$(dirname $0)"
source $CONFIG_FILE_DIRECTORY/aliases.sh
source $CONFIG_FILE_DIRECTORY/env-vars.sh
source $CONFIG_FILE_DIRECTORY/fzf.sh
# # For NVM configurations if using
# source $CONFIG_FILE_DIRECTORY/nvm.zsh

TMUX=$HOME/.tmux.conf
# test command can also be written [! -f "$TMUX"] or [[! -f "$TMUX"]]
if test ! -f "$TMUX"; then
    CONF_TMUX=$CONFIG_FILE_DIRECTORY/tmux.conf
    echo ".tmux.conf not found in $HOME. Creating softlink to $CONF_TMUX"
    ln -s $CONF_TMUX $TMUX
fi

VIMRC=$HOME/.vimrc
if test ! -f "$VIMRC"; then
    CONF_VIMRC=$CONFIG_FILE_DIRECTORY/heavyweight.vimrc
    echo ".vimrc not found in $HOME. Creating softlink to $CONF_VIMRC"
    ln -s $CONF_VIMRC $VIMRC
fi

NVIM_CONFIG_DIR=$HOME/.config/nvim
NVIMRC=$NVIM_CONFIG_DIR/init.vim
if test ! -f "$NVIMRC"; then
    mkdir -p $NVIM_CONFIG_DIR
    CONF_VIMRC=$CONFIG_FILE_DIRECTORY/heavyweight.vimrc
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

bindkey -s ^f "echo hello\n"
