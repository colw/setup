#!/usr/bin/env bash

echo "Create .zshrc and file if not already present"
touch ~/.zshrc

echo "Installing NVM and Node…"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node

echo "Installing Brew…"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Install from Brew…"
brew install git hub tig wget jq dry
brew cask install gitup firefox google-chrome visual-studio-code sublime-text emacs macvim alfred slack spotify itsycal dash

echo "mkdir -p ~/code"
mkdir -p ~/code
