#!/usr/bin/env bash

# Uninstall zsh
chsh /bin/bash
apt purge zsh
rm -f ~/powerlevel10k
