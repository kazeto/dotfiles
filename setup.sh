#!/bin/bash

DIR=`dirname $0`
DOT_FILES=(bash_profile bashrc zshrc wgetrc emacs.d tmux.conf gitconfig)

for file in ${DOT_FILES[@]}
do
    if [ -f ${DIR}/${file} ]; then
	if [ -f ${HOME}/.${file} ] then;
	    mv ${HOME}/.${file} ${HOME}/.${file}~
	fi
	ln -s ${DIR}/${file} ${HOME}/.${file}
    fi
done
