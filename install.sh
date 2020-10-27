#!/bin/sh

# Installing Xcode Developer Tools
xcode-select --install

# Install ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
cp -R ZSH/. ~/;

# Install Spaceship Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

# Install ZSH-AutoSuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install ZSH-Syntax-Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Homebrew and useful tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

brew install rbenv;
brew install pyenv;
brew install mongodb;
brew install node;
brew install mas;
brew install autojump;

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

# Download Wallpaper
curl -O http://static.simpledesktops.com/uploads/desktops/2020/06/28/Big_Sur_Simple.png;

# Download Screensaver
curl -O https://github.com/JohnCoates/Aerial/releases/download/v1.1/Aerial.zip;

open Aerial.zip;

# Installing Applications
echo 'Downloading VSCode';
open https://code.visualstudio.com/Download;

echo 'Downloading Spotify';
open https://www.spotify.com/us/download/;

# Set Terminal theme
open "grant's_theme.terminal";

# Setting Mac Preferences
bash mac.sh;

# Setting up git
bash git.sh;

# Setting up Atom
bash code.sh;

# Setting up Mac App Store Apps
bash mas.sh;
