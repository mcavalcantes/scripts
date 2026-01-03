# !/bin/bash

FILE=$1

NAME="${FILE%%.*}"
EXT="${FILE##*.}"

g++ $FILE -std=c++23 -O2 -Wall -Wextra -o $NAME
./$NAME

rm ./$NAME