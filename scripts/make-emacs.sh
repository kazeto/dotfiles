#! /bin/sh
# -*- coding: utf-8 -*-

#cd $DOTFILES_HOME/mods

#wget http://ftp.jaist.ac.jp/pub/GNU/emacs/emacs-26.2.tar.gz
#tar xvzf emacs-26.2.tar.gz
cd $DOTFILES_HOME/mods/emacs-26.2

./configure --prefix=$HOME/.local --with-gif=no --with-gnutls=no
make
make install
