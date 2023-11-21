#!/bin/bash

# check apple defaults
PRESS_AND_HOLD_ENABLED=$(defaults read NSGlobalDomain ApplePressAndHoldEnabled)
if [[ $PRESS_AND_HOLD_ENABLED -gt 0 ]]
then
    echo "$PRESS_AND_HOLD_ENABLED disabling"
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
fi

# check brew
brew --help
if [ $? -ne 0 ]; then
    echo "Installing Brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if .zshrc synlink exists

zshConfig="~/.zshrc"
if [ -L "${zshConfig}" ]; then
  echo "=> File doesn't exist"
  ln ~/.zshrc ~/.config/.zshrc
fi

# check Workspace directory
mkdir -p ~/Workspace

echo "All set. Enjoy your Mac!"
