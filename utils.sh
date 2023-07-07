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



# Git worktree clone. Sets up everything to get tarted in a repo
wclone(){
  # Get repo name
  url=$1
  basename=$(basename $url)
  echo $basename
  filename=${basename%.*}
  echo Cloning to file: $filename
  # extension=${basename##*.}
  # echo $extension

  # Make direcotry
  mkdir $filename
  cd $filename
  git clone $url .bare --bare
  ln -s .bare .git

  # Add some default branches to work with
  git worktree add main
  git worktree add current
  git worktree add hotfix
}
