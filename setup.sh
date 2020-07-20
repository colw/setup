#!/usr/bin/env bash

echo "Create .zshrc file if not already present"
touch "${HOME}/.zshrc"

echo "Installing Node via NPM…"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "Installing Brew…"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Install from Brew…"
brew install git hub tig wget jq dry
brew cask install firefox google-chrome visual-studio-code emacs macvim alfred slack spotify itsycal dash

echo "mkdir -p ${HOME}/code"
mkdir -p "${HOME}/code"
