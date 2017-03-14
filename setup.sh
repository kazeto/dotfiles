#! /usr/bin/bash

cd `dirname $0`

DIR=`pwd`
DOTFILES=(bash_profile bashrc zshrc emacs.d tmux.conf gitconfig)

for file in ${DOTFILES[@]}
do
    if [ -f ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo "ln -s ${DIR}/${file} ${HOME}/.${file}"
    ln -s ${DIR}/${file} ${HOME}/.${file}
done

echo "export DOTFILES_HOME=$DIR" > ~/.dotfiles_profile

sh scripts/make-fzy.sh
