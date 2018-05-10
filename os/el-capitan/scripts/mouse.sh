#!/bin/sh

# ---------------------------------------------------------------------------- #
# OSX preferences                                                              #
# ---------------------------------------------------------------------------- #

echo " ->    Mouse"

# Mouse ========================================================================

# Enable right-click
defaults write com.apple.driver.AppleHIDMouse Button2 -int 2

# Set mouse speed to 3
defaults write -g com.apple.mouse.scaling 3

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable text replacement
defaults write NSGlobalDomain NSAutomaticTextReplacementEnabled -bool false

# Disable “natural” scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# ======================================================================== Mouse
