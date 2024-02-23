#!/bin/bash

function echo_ok() { echo -e '\033[1;32m'"$1"'\033[0m'; }
function echo_warn() { echo -e '\033[1;33m'"$1"'\033[0m'; }
function echo_error() { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Configuring OSX..."

# Set fast key repeat rate
# The step values that correspond to the sliders on the GUI are as follow (lower equals faster):
# KeyRepeat: 120, 90, 60, 30, 12, 6, 2
# InitialKeyRepeat: 120, 94, 68, 35, 25, 15
# defaults write NSGlobalDomain KeyRepeat -int 6
# defaults write NSGlobalDomain InitialKeyRepeat -int 25

# Always show scrollbars
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Require password as soon as screensaver or sleep mode starts
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show filename extensions by default
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Expanded Save menu
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expanded Print menu
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable "natural" scroll
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Remove all items from the dock
defaults write com.apple.dock persistent-apps -array && killall Dock

# Add bluetooth item to menu bar
defaults write com.apple.controlcenter.plist Bluetooth -int 18

# Automatically hide and show dock
defaults write com.apple.dock autohide -bool true && killall Dock

# Reduce animation time of dock
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

# Increase screenshot floater time to 30 seconds
defaults write com.apple.screencaptureui "thumbnailExpiration" -float 30 && killall SystemUIServer
