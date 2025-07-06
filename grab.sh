#!/usr/bin/env bash
set +e
cp -fv ~/.bash_profile .
cp -fv ~/.bashrc .
cp -fv ~/.bash_aliases .
cp -fv ~/.tmux.conf .
cp -fv ~/.vimrc .
cp -fv ~/.gitconfig .
cp -fv ~/.git-templates/hooks/prepare-commit-msg .
cp -fv ~/.local/bin/tmuxnodes .
echo "grab successful"
