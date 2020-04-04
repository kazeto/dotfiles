# -*- mode: Shell-script -*-


## Common setting among bash and zsh
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

source $DOTFILES_HOME/scripts/alias.sh
source $DOTFILES_HOME/scripts/os_detect.sh
source $DOTFILES_HOME/mods/enhancd/init.sh

export LSCOLORS=gxfxcxdxbxegedabagacad

## Source local configuration
if [ -f /data/kazeto/env.sh ]; then
	source /data/kazeto/env.sh
fi

if [ -f ~/.local/env.sh ]; then
	source ~/.local/env.sh
fi

