#!/usr/bin/env bash
set +e

# create required directories
mkdir -p ~/workspace/projects/$USER
mkdir -p ~/downloads
mkdir -p ~/playground
mkdir -p ~/.git-templates/hooks/

# copy files
cp -fv .bash_profile ~/
cp -fv .bashrc ~/
cp -fv .bash_aliases ~/
cp -fv .tmux.conf ~/
cp -fv .vimrc ~/
cp -fv .gitconfig ~/
cp -fv prepare-commit-msg ~/.git-templates/hooks/prepare-commit-msg

# source bash configurations
source .bash_profile
source .bash_aliases
source .bashrc

# set git config
git config --global init.templatedir '~/.git-templates'
git config --global core.hooksPath "~/.git-templates/hooks/"

# add execution permissions to files
chmod a+x ~/.git-templates/hooks/prepare-commit-msg

echo "environment setup successful"
