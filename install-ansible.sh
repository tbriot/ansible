#!/usr/bin/env bash
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update
# ansible-pull command requires git it seems
sudo apt -y install software-properties-common git ansible
