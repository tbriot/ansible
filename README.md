# ansible

## Install Ansible and Git on your local machine

```bash
wget -O - https://raw.githubusercontent.com/tbriot/ansible/main/install-ansible.sh | bash
```

## Clone repository 
```bash
INSTALL_DIR=$HOME/projects/tbriot/ansible
mkdir -p $INSTALL_DIR && cd $INSTALL_DIR
git clone https://github.com/tbriot/ansible.git $INSTALL_DIR
```

## Run ansible playbook

```bash
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
```

'BECOME password' is your unix user password (so that ansible can run sudo commands)

'Vault password' is the Ansible Vault password (to decrypt the ssh private key)

Restart your terminal. You should have the zsh shell launched by default now and
environment variables set up properly.

### (Optional) Run specific ansible tasks by filtering on tags

```bash
ansible-playbook local.yml --ask-become-pass --tags "prerequisites,productivity,shell,python,dotfiles"
```

## Source `.bashrc` file
```bash
. ~/.bashrc
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