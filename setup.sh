#!/usr/bin/env bash

echo "Create .zshrc file if not already present"
touch ~/.zshrc

echo "install Xcode tools"
xcode-select --install

echo "Installing NVM and Node…"
echo "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.zshrc
nvm install node

echo "Installing Brew…"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Install from Brew…"
echo "brew install git hub tig wget jq k9s mkcert nss"
brew install git hub tig wget jq k9s mkcert nss
echo "brew cask install docker tunnelblick google-cloud-sdk gitup firefox google-chrome visual-studio-code sublime-text emacs macvim alfred slack spotify itsycal bitbar vmware-fusion cask"
brew cask install docker tunnelblick google-cloud-sdk gitup firefox google-chrome visual-studio-code sublime-text emacs macvim alfred slack spotify itsycal bitbar vmware-fusion notion iterm2

echo "Install dash4"
brew tap homebrew/cask-versions
brew cask install dash4

echo "Install dry"
brew tap moncho/dry
brew install dry

# Install VS Code Plugins
echo "Installing vscode plugins…"
code --install-extension attilabuti.vscode-mjml
code --install-extension esbenp.prettier-vscode 
code --isntall-extension Prisma.vscode-graphql
code --install-extension ms-azuretools.vscode-docker
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension deerawan.vscode-dash

echo "Installing yarn…"
echo "curl -o- -L https://yarnpkg.com/install.sh | bash"
curl -o- -L https://yarnpkg.com/install.sh | bash

echo "mkdir -p ~/code"
mkdir -p ~/code

# TODO
# Install Chrome plugins
# Whatfont — https://chrome.google.com/webstore/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm
# JSON Formatter — https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa
# React Developer Tools — https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
# Apollo Client Developer Tools — https://chrome.google.com/webstore/detail/apollo-client-developer-t/jdkknkkbebbapilgoeccciglkfbmbnfm