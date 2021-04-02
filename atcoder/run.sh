#! /usr/bin/bash

BIN=out.exe

echo -e "\e[36m> rm -f ${BIN}\e[0m"
rm -f ${BIN}

echo -e "\e[36m> g++ -DDEBUG -o ${BIN} ./main.cpp\e[0m"
g++ -DDEBUG -o ${BIN} ./main.cpp

for i in $(ls *.txt)
do
	echo -e "\e[36m> ./${BIN} < $i\e[0m"
	./${BIN} < $i
done
