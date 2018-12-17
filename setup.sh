#! /usr/bin/bash
# -*- coding: utf-8 -*-

cd `dirname $0`
DIR=`pwd`

git submodule update -i

echo "Setting up dotfiles:"
DOTFILES=(bash_profile bashrc zshrc emacs.d tmux.conf gitconfig gdbinit)

for file in ${DOTFILES[@]}
do
    # Back up old files
    if [ -e ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo '    "${DIR}/${file}" -> "${HOME}/.${file}"'
    ln -sf ${DIR}/${file} ${HOME}/.${file}
done

echo "export DOTFILES_HOME=$DIR" > ~/.dotfiles_profile

mkdir -p ~/.local/bin
ln -s ${DIR}/mods/Parsrs/parsrj.sh ~/.local/bin/parsrj

sh scripts/make-fzy.sh
