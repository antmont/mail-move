#!/usr/bin/env bash

# Install mail move automation components

# Directory for temporarily storing files
mkdir -p ~/Downloads/mail

# Install Applescript where it can be accessed by mail
cp -f mail-save-attachment-v2.scpt ~/Library/Application\ Scripts/com.apple.mail/mail-save-attachment-v2.scpt

# Copy plist to the correct location for user agents and load it
launchctl unload ~/Library/LaunchAgents/com.fusiforms.mailmove.plist
cp com.fusiforms.mailmove.plist ~/Library/LaunchAgents/com.fusiforms.mailmove.plist
launchctl load ~/Library/LaunchAgents/com.fusiforms.mailmove.plist
