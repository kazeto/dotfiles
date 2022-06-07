#!/usr/bin/bash

cd $DOTFILES_HOME/mods

wget https://github.com/Kitware/CMake/releases/download/v3.20.1/cmake-3.20.1.tar.gz
tar -zxvf cmake-3.20.1.tar.gz
cd $DOTFILES_HOME/mods/cmake-3.20.1

./bootstrap --prefix=$HOME/.local
make
make install

echo 'export CMAKE_ROOT=$DOTFILES_HOME/mods/cmake-3.20.1' >> $HOME/.local/env.sh
