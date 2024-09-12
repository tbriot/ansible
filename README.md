# ansible

## Install Ansible on your local machine

```bash
wget -O - https://raw.githubusercontent.com/tbriot/ansible/main/install-ansible.sh | bash
```
Note: git is also installed

## Clone repository 
```bash
INSTALL_DIR=$HOME/development/tbriot/ansible
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

