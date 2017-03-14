#! /bin/sh

cd `dirname $0`
cd ../mods/fzy

mkdir -p ~/.local

export PREFIX=~/.local
make install
