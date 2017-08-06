#!/bin/sh

# ---------------------------------------------------------------------------- #
# OSX preferences                                                              #
# ---------------------------------------------------------------------------- #

echo " ->    Dock"

# Dock =========================================================================

# Set the icon size of Dock items to 64 pixels
defaults write com.apple.dock tilesize -int 64

# Disable icon magnification
defaults write com.apple.dock largesize -float 64

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Set dock to bottom middle of the screen
defaults write com.apple.dock orientation -string "bottom"
defaults write com.apple.dock pinning -string middle

# ========================================================================= Dock
