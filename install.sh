#!/bin/sh

# Install ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
cp -R ZSH/. ~/;

# Make hidden folder for scripts
mkdir -p ~/.scripts;
cp -R scripts/. ~/.scripts;
