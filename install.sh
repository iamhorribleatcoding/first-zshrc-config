#!/bin/bash

# Check if oh-my-zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Backup existing zshrc
if [ -f "$HOME/.zshrc" ]; then
    echo "Backing up existing .zshrc to .zshrc.backup"
    cp ~/.zshrc ~/.zshrc.backup
fi

# Copy zshrc
cp zshrc ~/.zshrc

# Copy fastfetch configs
mkdir -p ~/.config/fastfetch
cp -r fastfetch/* ~/.config/fastfetch/

# Copy scripts
mkdir -p ~/scripts
cp -r scripts/* ~/scripts/
chmod +x ~/scripts/*.sh

# Copy kitty config
mkdir -p ~/.config/kitty
cp kitty/* ~/.config/kitty/
chmod +x ~/.config/kitty/*.sh

echo "Installation complete! Restart your terminal or run 'source ~/.zshrc'"
