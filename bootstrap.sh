#!/usr/bin/env bash
#
# Bootstrap script for setting up a new OSX machine
#
# This should be idempotent so it can be run multiple times.
#
# Some apps don't have a cask and so still need to be installed by hand. These
# include:
#
# - Twitter (app store)
# - Postgres.app (http://postgresapp.com/)
#
# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.
#
# Reading:
#
# - http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
# - https://gist.github.com/MatthewMueller/e22d9840f9ea2fee4716
# - https://news.ycombinator.com/item?id=8402079
# - http://notes.jerzygangi.com/the-best-pgp-tutorial-for-mac-os-x-ever/

# helpers
function echo_ok() { echo -e '\033[1;32m'"$1"'\033[0m'; }
function echo_warn() { echo -e '\033[1;33m'"$1"'\033[0m'; }
function echo_error() { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Install starting. You may be asked for your password (for sudo)."

# requires xcode and tools!
xcode-select -p || exit "XCode must be installed! (use the app store)"


echo_ok 'Running OSX Software Updates...'
sudo softwareupdate -i -a

echo_ok "Creating folder structure..."
#[[ ! -d Wiki ]] && mkdir Wiki
#[[ ! -d Workspace ]] && mkdir Workspace


#osx

# homebrew

# echo_ok "Installing Python packages..."
# PYTHON_PACKAGES=(
# 	ipython
# 	virtualenv
# 	virtualenvwrapper
# )
# sudo pip install "${PYTHON_PACKAGES[@]}"

echo "Installing Ruby gems"
RUBY_GEMS=(
	bundler
	rake
)
sudo gem install "${RUBY_GEMS[@]}"

# echo_ok "Installing global npm packages..."

# npm install -g aws-sam-local
# npm install -g spaceship-prompt

echo_ok "Installing oh my zsh..."

if [[ ! -f ~/.zshrc ]]; then
	echo ''
	echo '##### Installing oh-my-zsh...'
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

	cp ~/.zshrc ~/.zshrc.orig
	cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
	chsh -s /bin/zsh
fi

echo_ok "Skipping Configuring Github"

# if [[ ! -f ~/.ssh/id_rsa ]]; then
# 	echo ''
# 	echo '##### Please enter your github username: '
# 	read github_user
# 	echo '##### Please enter your github email address: '
# 	read github_email

# 	# setup github
# 	if [[ $github_user && $github_email ]]; then
# 		# setup config
# 		git config --global user.name "$github_user"
# 		git config --global user.email "$github_email"
# 		git config --global github.user "$github_user"
# 		# git config --global github.token your_token_here
# 		git config --global color.ui true
# 		git config --global push.default current
# 		# VS Code support
# 		git config --global core.editor "code --wait"

# 		# set rsa key
# 		curl -s -O http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
# 		chmod u+x git-credential-osxkeychain
# 		sudo mv git-credential-osxkeychain "$(dirname $(which git))/git-credential-osxkeychain"
# 		git config --global credential.helper osxkeychain

# 		# generate ssh key
# 		cd ~/.ssh || exit
# 		ssh-keygen -t rsa -C "$github_email"
# 		pbcopy <~/.ssh/id_rsa.pub
# 		echo ''
# 		echo '##### The following rsa key has been copied to your clipboard: '
# 		cat ~/.ssh/id_rsa.pub
# 		echo '##### Follow step 4 to complete: https://help.github.com/articles/generating-ssh-keys'
# 		ssh -T git@github.com
# 	fi
# fi

# echo_ok "Installing VS Code Extensions..."

# VSCODE_EXTENSIONS=(
# 	AlanWalk.markdown-toc
# 	CoenraadS.bracket-pair-colorizer
# 	DavidAnson.vscode-markdownlint
# 	DotJoshJohnson.xml
# 	EditorConfig.EditorConfig
# 	Equinusocio.vsc-material-theme
# 	HookyQR.beautify
# 	James-Yu.latex-workshop
# 	PKief.material-icon-theme
# 	PeterJausovec.vscode-docker
# 	Shan.code-settings-sync
# 	Zignd.html-css-class-completion
# 	akamud.vscode-theme-onedark
# 	akmittal.hugofy
# 	anseki.vscode-color
# 	arcticicestudio.nord-visual-studio-code
# 	aws-scripting-guy.cform
# 	bungcip.better-toml
# 	christian-kohler.npm-intellisense
# 	christian-kohler.path-intellisense
# 	codezombiech.gitignore
# 	dansilver.typewriter
# 	dbaeumer.jshint
# 	donjayamanne.githistory
# 	dracula-theme.theme-dracula
# 	eamodio.gitlens
# 	eg2.vscode-npm-script
# 	ipedrazas.kubernetes-snippets
# 	loganarnett.lambda-snippets
# 	lukehoban.Go
# 	mohsen1.prettify-json
# 	monokai.theme-monokai-pro-vscode
# 	ms-python.python
# 	ms-vscode.azure-account
# 	msjsdiag.debugger-for-chrome
# 	robertohuertasm.vscode-icons
# 	robinbentley.sass-indented
# 	waderyan.gitblame
# 	whizkydee.material-palenight-theme
# 	whtsky.agila-theme
# 	zhuangtongfa.Material-theme
# 	foxundermoon.shell-format
# 	timonwong.shellcheck
# )

# if hash code &>/dev/null; then
# 	echo_ok "Installing VS Code extensions..."
# 	for i in "${VSCODE_EXTENSIONS[@]}"; do
# 		code --install-extension "$i"
# 	done
# fi


echo_ok "Bootstrapping complete"
