#!/bin/sh

# ---------------------------------------------------------------------------- #
# OSX preferences                                                              #
# ---------------------------------------------------------------------------- #

echo " ->    User Interface"

# GUI ==========================================================================

# Enable Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Increase window resize speed
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Hides all the desktop's icons
defaults write com.apple.finder CreateDesktop -bool false

# Expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable Notification Center and remove the menu bar icon
launchctl unload -w \
/System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Change the wallaper
defaults write com.apple.desktop Background '{default = {ImageFilePath =
"../wallpapers/totoro.jpeg"; };}'

# ========================================================================== GUI
