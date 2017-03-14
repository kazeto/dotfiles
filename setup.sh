#! /usr/bin/bash

cd `dirname $0`

DIR=`pwd`
DOT_FILES=(bash_profile bashrc zshrc wgetrc emacs.d conf.d tmux.conf gitconfig)

for file in ${DOT_FILES[@]}
do
    if [ -f ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo "ln -s ${DIR}/${file} ${HOME}/.${file}"
    ln -s ${DIR}/${file} ${HOME}/.${file}
done
