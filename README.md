# ansible

## Install Ansible on your local machine

```bash
wget -O - https://raw.githubusercontent.com/tbriot/ansible/main/install-ansible.sh | bash
```
Note: git is also installed

## Clone repository 
```bash
INSTALL_DIR=$HOME/projects/tbriot/ansible
mkdir -p $INSTALL_DIR && cd $INSTALL_DIR
git clone https://github.com/tbriot/ansible.git $INSTALL_DIR
```

## Run ansible playbook

```bash
./run-playbook.sh
```

'BECOME password' is your unix user password (so that ansible can run sudo commands)

'Vault password' is the Ansible Vault password (to decrypt the ssh private key)

Restart your terminal. You should have the zsh shell launched by default now and
environment variables set up properly.

### Run ansible playbook for a specific tag

```bash
ansible-playbook local.yml --ask-become-pass --tags neovim
```

## Install a Nerd Font
A Nerd Font has to be installed and configured in your Windows Terminal so that all glyphs used by the `starship` shell prompt are displayed nicely.


Most popular Nerd Font `Fire Code` can be downloaded here: https://github.com/tonsky/FiraCode

Download the zip file, unzip it, install fonts in Windows using right-click 'Install', then configure your Windows Terminal to use a `Fire Code` font.


## Update git config
Edit `~/.config/git/config` to set the proper `user.username` and `user.email` values.

## Update AWS CLI config
Edit `~/.aws/config` to set AWS profiles with proper AWS accounts, roles, regions, sso sessions...

## Switch github repository to SSH
(otherwise you will not be able to push changes)

```bash
cd ~/development/tbriot/ansible
git remote set-url origin git@github.com:tbriot/ansible.git
cd ~/.dotfiles
git remote set-url origin git@github.com:tbriot/dotfiles.git
```

## Load neovim plugins

```bash
v ~/.config/nvim/lua/tbriot/packer.lua
```

Ignore error messages  
Enter ":so" to source the packer.lua file  
Enter ":PackerSync" to download all the plugins   
Relaunch neovim

