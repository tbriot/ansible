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

## Load neovim plugins

```bash
vim ~/.config/nvim/lua/tbriot/packer.lua
```
Enter ":so" to source the packer.lua file
Enter ":PackerSync" to download all the plugins 
Relaunch neovim
