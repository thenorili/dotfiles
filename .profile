# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

set -x

# `dircolors` prints out `LS_COLORS='...'; export LS_COLORS`, so eval'ing
# $(dircolors) effectively sets the LS_COLORS environment variable.

eval "$(dircolors ~/.dir_colors)"






# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi





export PATH="$PATH:`yarn global bin`"

export PATH="$PATH:/lib/x86_64-linux-gnu"

export PATH="$PATH:/home/nori/.rbenv/bin"

export PATH="$HOME/.poetry/bin:$PATH"





set +x
