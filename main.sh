#!/bin/bash
make re -C ../libft
echo "libft done"
gcc main.c $1 -lm -L ../libft -lft
echo "test avec text"
./a.out text.txt >> solv
rm solv
echo "yolo" >> solv
if [ $(cmp solv safe) = $(cat rez) ]
then
	echo "good"
else
	echo "diff"
fi
echo "............................."
