#!/bin/sh

# ---------------------------------------------------------------------------- #
# OSX preferences                                                              #
# ---------------------------------------------------------------------------- #

echo " ->    Keyboard"

# Keyboard =====================================================================

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Swap the command and control keys.
defaults -currentHost write -g com.apple.keyboard.modifiermapping '({
            HIDKeyboardModifierMappingDst = 4;
            HIDKeyboardModifierMappingSrc = 2; })'

# Toggle "Use all F1, F2 as standard keys"
defaults write -g com.apple.keyboard.fnState -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Use U.S. international keyboard layout
defaults delete com.apple.HIToolbox AppleEnabledInputSources
defaults write com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID \
"com.apple.keylayout.USInternational-PC"
defaults write com.apple.HIToolbox AppleEnabledInputSources -array \
'<dict><key>InputSourceKind</key><string>KeyboardLayout</string><key>
KeyboardLayoutID</key><integer>15000</integer><key>KeyboardLayoutName</key>
<string>USInternational-PC</string></dict>'
defaults write com.apple.HIToolbox AppleInputSourceHistory -array \
'<dict><key>InputSourceKind</key><string>KeyboardLayout</string>
<key>KeyboardLayoutID</key><integer>15000</integer>
<key>KeyboardLayoutName</key><string>USInternational-PC</string></dict>'

# Restarts
killall SystemUIServer

# ===================================================================== Keyboard
