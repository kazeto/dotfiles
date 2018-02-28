#! /usr/bin

## Common setting among bash and zsh

export PATH=$PATH:$HOME/bin:$HOME/.local/bin
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

source $DOTFILES_HOME/scripts/alias.sh
source $DOTFILES_HOME/scripts/os_detect.sh
source $DOTFILES_HOME/mods/enhancd/init.sh
source $DOTFILES_HOME/scripts/local_conf.sh
