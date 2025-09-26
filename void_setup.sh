#!/bin/sh
# Void linux post install script
# Should setup everything how I like it and want it, not the most efficient
# @author: aluque1
# Last update: 2025-09-25

# Enable debugging output and exit on error
set -x

# Add multilib and nonfree repositories
sudo xbps-install -Sy void-repo-nonfree

# Update package lists and upgrade existing packages
sudo xbps-install -Syu

# Install packages for used applications
sudo xbps-install -y waybar
sudo xbps-install -y kitty
sudo xbps-install -y tofi
sudo xbps-install -y sway
sudo xbps-install -y swayidle
sudo xbps-install -y sioyek
sudo xbps-install -y code-oss
sudo xbps-install -y foliate
sudo xbps-install -y glow

# Install Flathub and used applications
sudo xbps-install -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub app.zen_browser.zen

# Add dotfiles from repo
git clone https://www.github.com/aluque1/dotfiles
cd dotfiles
mv .bashrc $HOME/
mv aliasrc kitty/ sway/ tofi/ waybar/ $HOME/.config/
