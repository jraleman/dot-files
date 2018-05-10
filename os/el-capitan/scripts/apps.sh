#!/bin/sh

# ---------------------------------------------------------------------------- #
# OSX preferences                                                              #
# ---------------------------------------------------------------------------- #

# Apps =========================================================================

# ---------------------------------------------------------------------------- #
# System apps                                                                  #
# ---------------------------------------------------------------------------- #

echo " ->    Terminal"
# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

echo " ->    Volumes"
# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo " ->    Activity Monitor"
# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Update every 1 second
defaults write com.apple.ActivityMonitor UpdatePeriod -int 1

# Mavericks: Show Data in the Disk graph (instead of IO)
defaults write com.apple.ActivityMonitor DiskGraphType -int 1

# Mavericks: Show Data in the Network graph (instead of packets)
defaults write com.apple.ActivityMonitor NetworkGraphType -int 1

echo " ->    Archive Utility"
# Move archives to trash after extracting
defaults write com.apple.archiveutility \
"dearchive-move-after" -string "~/.Trash"

echo " ->    TextEdit"
# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

echo " ->    Photos"
# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo " ->    Safari"
# Prevent "Try the new Safari" notification
defaults write com.apple.coreservices.uiagent \
CSUIHasSafariBeenLaunched -bool YES
defaults write com.apple.coreservices.uiagent \
CSUIRecommendSafariNextNotificationDate -date 2050-01-01T00:00:00Z
defaults write com.apple.coreservices.uiagent \
CSUILastOSVersionWhereSafariRecommendationWasMade -float 10.99

# Prevent Safari from asking to be the default browser
defaults write com.apple.Safari DefaultBrowserDateOfLastPrompt \
-date '2050-01-01T00:00:00Z'
defaults write com.apple.Safari DefaultBrowserPromptingState -int 2

# Show status bar
defaults write com.apple.Safari ShowStatusBar -bool true

# Show tab bar
defaults write com.apple.Safari AlwaysShowTabBar -bool true

# Safari opens with: A new window
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool false

# New windows open with: Empty Page
defaults write com.apple.Safari NewWindowBehavior -int 1

# New tabs open with: Empty Page
defaults write com.apple.Safari NewTabBehavior -int 1

# Homepage
defaults write com.apple.Safari HomePage -string "about:blank"

# Don't open "safe" files after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Open pages in tabs instead of windows: automatically
defaults write com.apple.Safari TabCreationPolicy -int 1

# Don't make new tabs active
defaults write com.apple.Safari OpenNewTabsInFront -bool false

# Command-clicking a link creates tabs
defaults write com.apple.Safari CommandClickMakesTabs -bool true

# Warn About Fraudulent Websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Do not track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Don't even ask about the push notifications
defaults write com.apple.Safari CanPromptForPushNotifications -bool false

# ---------------------------------------------------------------------------- #
# Custom apps                                                                  #
# ---------------------------------------------------------------------------- #

echo " ->    Custom application preferences"

echo " ->    iTunes"
# Prevent iTunes from taking control of play button
launchctl unload -w \
/System/Library/LaunchAgents/com.apple.rcd.plist &> /dev/null

echo " ->    Spotify"
# Prevent Spotify from sleeping (AppNap disable)
defaults write com.spotify.client NSAppSleepDisabled -bool YES

echo " ->    iTerm 2"
# Import our predefined profile
defaults import com.googlecode.iterm2.plist iterm2/com.googlecode.iterm2.plist

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 PromptOnClose -bool false

# Dim only text, and use a custom amount
defaults write com.googlecode.iterm2 DimOnlyText -bool true
defaults write com.googlecode.iterm2 SplitPaneDimmingAmount 0.32

# Allow clipboard access to terminal apps
defaults write com.googlecode.iterm2 AllowClipboardAccess -bool true

# Opens files in new windows instead of a new tab
defaults write com.googlecode.iterm2 OpenFileInNewWindows -bool true

# ========================================================================= Apps
