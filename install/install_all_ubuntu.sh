#!/usr/bin/env bash

set -e

# nori's installation script for ubuntu
# `lsb_release -a` could help us start platformizing a bit...

Packages=(\
    # essential utilities
    "curl" "firefox" "git" \
    "nvim" "tmux" "fd-find" \
    "ripgrep" "rsync" "snapd" \
    # development tools for c and shell
    "gdb" "shellcheck" \
    # retro terminal and window manager
    "xterm" "i3" \
    # fish shell
    "fish")

INSTALL_DIR=$(dirname -- "$( readlink -f -- "$0"; )")

# AllInstalled=(${packages} +\
#    "llvm-toolchain" "rust" "dein.vim" "tpm" "brew" "oh-my-fish" "discord"

main() {
    # ? maybe an identifier file in the git repo we test for to bypass this --
    # or do we want this to install over other stuff?
    echo "Copying config files into home directory"
    # assumes .../dotfiles/install_scripts, copies this to home
    rsync -r "$INSTALL_DIR/../../dotfiles/home/" ~/

    echo "Installing key packages with apt package manager"
    sudo apt update -y

    List=""
    for Package in ${Packages}; do
        List+="${Package}"
    done
    echo "Running `sudo apt install -y ${LIST}`"
    sudo apt install -y "${List}"

    echo "Installing LLVM toolchain"
    curl -O https://apt.llvm.org/llvm.sh
    chmod +x llvm.sh
    sudo ./llvm.sh all
    rm llvm.sh

    # could test for these before installing
    # since they're not in the package manager

    echo "Installing Rust"
    # rust PATH stuff is set up in config
    curl https://sh.rustup.rs -sSf | sh -s -- -y

    echo "Installing dein"
    ~/install_scripts/install_dein.sh -uNC

    echo "Installing tpm"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    echo "Installing brew"
    ~/install_scripts/install_brew.sh
    brew install nushell -y

    echo "Installing ohmyfish"
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

    echo "Installing Discord"
    sudo snap install discord
}

main
