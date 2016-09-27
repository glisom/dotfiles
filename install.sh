#!/bin/sh

# Installing Xcode Developer Tools
xcode-select --install

# Install ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
cp -R ZSH/. ~/;

# Install Homebrew and useful tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

brew install rbenv;
brew install pyenv;
brew install mongodb;
brew install node;

# Install NPM and useful packages
npm install npm -g;

npm install -g coffee-script;
npm install -g less;
npm install -g bower;

# Fix permissions
# sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share};

# Make hidden folder for scripts
mkdir -p ~/.scripts;
cp -R scripts/. ~/.scripts;

# Installing Applications
echo 'Downloading Atom'
open https://atom.io/download/mac
