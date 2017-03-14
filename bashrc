# -*- mode: Shell-script -*-

source ~/.dotfiles_profile
source $DOTFILES_HOME/scripts/rc.sh

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if is_cygwin; then
    source $DOTFILES_HOME/mods/mintty-colors-solarized/sol.dark
fi

export PS1="\[\e[0;36m\]\$(date +'[%m/%d %H:%M]') \[\e[0;35m\]\u@\h \[\e[0;33m\]\W \[\e[0;31m\]\$\[\e[00m\] "
