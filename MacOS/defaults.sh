#!/bin/bash

#
# Keyboard
#

# System preferences range from 2 - 120 (lowest 1)
defaults write NSGlobalDomain KeyRepeat -int 1

# System preferences range from 15 - 120
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Disable 'smart' quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

#
# Keyboard Shortcuts
#

# Show Launchpad (option+a)

# Bear
defaults write -app Bear NSUserKeyEquivalents -dict-add "Move Up" -string "~↑"
defaults write -app Bear NSUserKeyEquivalents -dict-add "Move Down" -string "~↓"
defaults write -app Bear NSUserKeyEquivalents -dict-add "Forward" -string "@]"
defaults write -app Bear NSUserKeyEquivalents -dict-add "Back" -string "@["
defaults write -app Bear NSUserKeyEquivalents -dict-add "Shift Left" -string "@~j"
defaults write -app Bear NSUserKeyEquivalents -dict-add "Shift Right" -string "@~k"

#
# Dock
#

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Change the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0

# Make Hidden App Icons Translucent in the Dock
defaults write com.apple.Dock showhidden -bool true

# Change minimize window animation
defaults write com.apple.Dock mineffect -string "scale"

#
# Mouse/Trackpad
#

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


#
# Battery Percentage
#

defaults write com.apple.menuextra.battery ShowPercent -bool true


#
# Finder
#

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Allow text selection in QuickLook
defaults write com.apple.finder QLEnableTextSelection -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: new window location set to $HOME. Same as Finder > Preferences > New Finder Windows show
# For other path use "PfLo" and "file:///foo/bar/"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

#
# Misc
#

# Use tabs
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always"

# Show Bluetooth in the menu bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -int 1

#
# TODO:
#
# App Store —> Install macOS updates
# App Store —> Free Downloads —> Save password
# Desktop -> Sort by -> Snap to Grid
# iTunes —> Preferences —> Devices —> Prevent iPods, iPhones, and iPads from syncing automatically
# Keyboard —> Modifier Keys —> Caps lock escape key
# Mouse --> Swipe between pages
# Mail --> Composing --> Send new messages from
# Mail --> Viewing --> Show most recent message at the top
# Photos —> Optimize for mac storage
# Security & Privacy —> General —> Require password 5 secs
# Security & Privacy —> General —> Allow your Apple Watch to unlock your Mac
