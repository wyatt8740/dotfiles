# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

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

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias wget='wget --content-disposition'
alias nano='nano -w -T 2'

# add D language compiler
#PATH="/home/wyatt/development/dlang/install/linux/bin64:$PATH"
export GNUSTEP_MAKEFILES=/usr/share/GNUstep/Makefiles
export GNUSTEP_LIBRARY="$HOME/GNUstep/Library"
export DEVKITPRO=/home/wyatt/development/3ds/devkitpro
export DEVKITARM=/home/wyatt/development/3ds/devkitpro/devkitARM
export EDITOR=nano
