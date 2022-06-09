#! /usr/bin/bash

BASE=$(dirname $0)

echo -ne '\e[36mname: \e[0m'
read name

echo -ne '\e[36mproblem: \e[0m'
read prob

echo -e "\e[36m> mkdir -p ${name}/${prob}\e[0m"
mkdir -p ${name}/${prob}

echo -e "\e[36m> cp main.cpp ${name}/${prob}/main.cpp\e[0m"
cp ${BASE}/main.cpp ${name}/${prob}/main.cpp

