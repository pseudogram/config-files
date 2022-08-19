batless() {
  bat --color=always $1|less -R 
}

addToPathFront() {
  if [[ "$PATH" != *"$1"*  ]]; then
    export PATH=$1:$PATH
  fi
}

# Make and cd into directory
# https://unix.stackexchange.com/a/125386
mcd ()
{
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}