#!/usr/bin/env bash

# Install mail move automation components

cp com.fusiforms.mailmove.plist $HOME/Library/LaunchAgents/com.fusiforms.mailmove.plist
launchctl load $HOME/Library/LaunchAgents/com.fusiforms.mailmove.plist
