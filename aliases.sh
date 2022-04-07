# Docker aliases
alias dc=docker-compose
alias dk=docker
alias dm='./docker.mk '

# Basic config aliases
# alias prettier="npm run prettier"
alias refresh="source $HOME/.zshrc"
alias rm="/bin/rm -iv"
alias cat=bat
alias cl=clear

# Python aliases
alias py=python3.9

# Git aliases
alias gfu='git fetch upstream'
alias gmu='git merge upstream/$(git_main_branch)'
alias gmm='git merge upstream/master'
alias gfmu='git fetch upstream; git merge upstream/$(git_main_branch)'
alias gfmm='git fetch upstream; git merge upstream/master'
alias uncommit='git reset --soft HEAD^'
