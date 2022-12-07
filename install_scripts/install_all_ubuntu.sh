#!/usr/bin/env bash

set -e

# maybe an identifier file in the git repo we test for to bypass this --
# or do we want this to install over other stuff?
echo "Copying config files into home directory"
rsync -r ~/dotfiles/ ~/

echo "Installing key packages with apt package manager"
sudo apt update -y
sudo apt install curl nvim tmux xterm fd-find ripgrep fish rsync i3 git -y

echo "Installing Rust"
curl https://sh.rustup.rs -sSf | sh -s -- -y

echo "Installing dein"
~/install_scripts/install_dein.sh -uNC

echo "Installing tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


