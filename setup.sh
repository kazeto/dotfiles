#! /usr/bin/bash

cd `dirname $0`

DIR=`pwd`
DOTFILES=(bash_profile bashrc zshrc emacs.d conf.d tmux.conf gitconfig)
DOTFILES_OPTIONAL=(wgetrc)

for file in ${DOTFILES[@]}
do
    if [ -f ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo "ln -s ${DIR}/${file} ${HOME}/.${file}"
    ln -s ${DIR}/${file} ${HOME}/.${file}
done

for file in ${DOTFILES_OPTIONAL[@]}
do
    if [ -f ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo "ln -s ${DIR}/${file} ${HOME}/.${file}"
    ln -s ${DIR}/${file} ${HOME}/.${file}
done
