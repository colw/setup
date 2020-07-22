#!/usr/bin/env bash

echo "Create .zshrc file if not already present"
touch ~/.zshrc

xcode-select --install

echo "Installing NVM and Node…"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node

echo "Installing Brew…"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Install from Brew…"
brew install git hub tig wget jq k9s mkcert nss
brew cask install docker tunnelblick google-cloud-sdk gitup firefox google-chrome visual-studio-code sublime-text emacs macvim alfred slack spotify itsycal bitbar

brew tap homebrew/cask-versions
brew cask install dash4

brew tap moncho/dry
brew install dry

# Install Chrome plugins
# JSON Formatter — https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en

# Install VS Code Plugins
# vscode-styled-components https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components
# vscode-graphql https://marketplace.visualstudio.com/items?itemName=Prisma.vscode-graphql
# prettier https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
# mjml https://marketplace.visualstudio.com/items?itemName=attilabuti.vscode-mjml

echo "mkdir -p ~/code"
mkdir -p ~/code
