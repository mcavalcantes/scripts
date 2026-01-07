# !/bin/bash

# Compiles and runs C++ code using the C++23 standard,
# with optimizations and warnings enabled.

# Usage: ./grun.sh main.cpp

FILE=$1

NAME="${FILE%%.*}"
EXT="${FILE##*.}"

g++ $FILE -std=c++23 -O2 -Wall -Wextra -o $NAME
./$NAME

rm ./$NAME