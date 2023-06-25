#
#  Setting directory things
#    ZSH configuration
#

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Calling nvm use automatically in a directory with a .nvmrc file
# place this after nvm initialization!
autoload -U add-zsh-hook
configure-nx-cache() {
  if [[ "$PWD" == *"config"* ]]; then
      export NX_CACHE_DIRECTORY="$HOME/config"
  else
      unset NX_CACHE_DIRECTORY
  fi
}
add-zsh-hook chpwd configure-nx-cache
configure-nx-cache
