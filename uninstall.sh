#!/usr/bin/env bash

# Uninstall zsh
chsh /bin/bash
apt purge zsh
rm -fr ~/powerlevel10k

# Delete dotfiles
rm -f ~/.gitconfig
rm -fr $XDG_CONFIG_HOME/git
rm -fr $XDG_CONFIG_HOME/p10k
rm -fr $XDG_CONFIG_HOME/zsh

# Delete SSH directory
rm -fr ~/.ssh

# Delete packages
sudo apt -y purge tmux alacritty i3 curl git
