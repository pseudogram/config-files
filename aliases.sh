# Docker aliases
alias dc=docker-compose
alias dk=docker
alias dm='./docker.mk '

# Basic config aliases
# alias prettier='npm run prettier'
alias refresh='source $HOME/.zshrc'
alias rm='/bin/rm -iv'
# alias cat=bat
alias cl=clear

# File shortcuts
alias conf=$HOME/config-files

# Python aliases
alias py=python3.10
alias bpy='python3.10 -m bpython'

# Git aliases
alias gfu='git fetch upstream'
alias gmu='git merge upstream/$(git_main_branch)'
alias grbu='git rebase upstream/$(git_main_branch)'
alias grbo='git rebase origin/$(git_main_branch)'
alias gfmu='git fetch upstream; git merge upstream/$(git_main_branch)'
alias gfmo='git fetch origin; git merge origin/$(git_main_branch)'
alias gfrbu='git fetch upstream; git rebase upstream/$(git_main_branch)'
alias gfrbo='git fetch origin; git rebase origin/$(git_main_branch)'
alias uncommit='git reset --soft HEAD^'
alias make-this-repo-safe='git remote set-url --push upstream DISABLED && git checkout master && git branch --set-upstream-to=upstream/master'

# Vim renames
alias vim='nvim'
alias vi='nvim'
alias oldvim='\vim'
alias vimf='$(fzf --preview='bat --color=always --theme=gruvbox-dark --style=numbers {}')'
