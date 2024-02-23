function echo_ok() { echo -e '\033[1;32m'"$1"'\033[0m'; }
function echo_warn() { echo -e '\033[1;33m'"$1"'\033[0m'; }
function echo_error() { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Add packages..."
TAPS=(
)

for tap in "${TAPS[@]}"; do
  brew tap "$tap"
done

echo_ok "Installing packages..."

PACKAGES=(
    bb-pacproxy
    bde-tools
    bde-core
    pacproxy
    bsl-internal
)
brew install "${PACKAGES[@]}"

echo_ok "Cleaning up..."
brew cleanup

# echo_ok "Installing cask..."
# # brew install caskroom/cask/brew-cask

# CASKS=(
# )

# echo_ok "Installing cask apps..."
# brew install --cask "${CASKS[@]}"

# # brew cask quicklook
# echo_ok "Installing QuickLook Plugins..."
# brew install --cask \
# 	qlcolorcode qlmarkdown qlprettypatch qlstephen \
# 	qlimagesize \
# 	quicklook-csv quicklook-json epubquicklook

# echo_ok "Installing fonts..."
# brew tap caskroom/fonts
# FONTS=(
# )
# brew install --cask "${FONTS[@]}"

# echo_ok "Installing Python packages..."
# PYTHON_PACKAGES=(
# 	ipython
# 	virtualenv
# 	virtualenvwrapper
# )
# sudo pip install "${PYTHON_PACKAGES[@]}"
