#! /bin/sh

cd $DOTFILES_HOME/mods

wget http://ftp.math.utah.edu/pub//bibclean/bibclean-2.17.zip
unzip -d ./bibclean bibclean-2.17.zip
cd ./bibclean

autoconf
./configure
make

mkdir ~/.local/man/man1
make prefix=~/.local install
