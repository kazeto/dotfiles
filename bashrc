# -*- mode: Shell-script -*-

source ~/.conf.d/alias.sh
source ~/.conf.d/os_detect.sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if is_cygwin; then
    source ~/.conf.d/solarized/sol.dark
fi

export PS1="\[\e[0;36m\]\$(date +'[%m/%d %H:%M]') \[\e[0;35m\]\u@\h \[\e[0;33m\]\W \[\e[0;31m\]\$\[\e[00m\] "

source ~/.conf.d/local-env.sh
