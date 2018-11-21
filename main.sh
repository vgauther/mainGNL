#!/bin/bash
make re -C ./libft
echo "libft done"
gcc main.c $1 -lm -L ./libft -lft
echo "test avec text"
./a.out text.txt

echo "test avec gnl.c"
./a.out get_next_line.c
