#! /usr/bin/bash

cd `dirname $0`
DIR=`pwd`

git submodule update -i

echo "Setting up dotfiles:"
DOTFILES=(bash_profile bashrc zshrc emacs.d tmux.conf gitconfig)

for file in ${DOTFILES[@]}
do
    if [ -e ${HOME}/.${file} ]; then
	mv ${HOME}/.${file} ${HOME}/.${file}~
    fi

    echo '    "${DIR}/${file}" -> "${HOME}/.${file}"'
    ln -sf ${DIR}/${file} ${HOME}/.${file}
done

echo "export DOTFILES_HOME=$DIR" > ~/.dotfiles_profile

sh scripts/make-fzy.sh
