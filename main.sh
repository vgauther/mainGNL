#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

rez1=0
rez2=0
rez3=0
rez4=0

echo -e "${BLUE}-------------------${NC}"
echo -e "${BLUE}-- ${GREEN}Début du test ${BLUE}--${NC}"
echo -e "${BLUE}-------------------${NC}"
echo -e ""

cp -rf $1 .
echo -e "${GREEN}[✓] Déplacement des fichiers${NC}"
echo -e ""
echo -e "${BLUE}Compilation de la libft ..${NC}"
make re -C ./libft
echo -e "${GREEN}[✓] libft compiled${NC}"
echo -e ""
echo -e "${BLUE}Compilation du test ..${NC}"
gcc main.c get_next_line.c -lm -L ./libft -lft
echo -e "${GREEN}[✓] test executable compiled${NC}"
echo -e ""
rm -rf s
mkdir s
./a.out ./exemple/1 > ./s/1
./a.out ./exemple/2 > ./s/2
./a.out ./exemple/3 > ./s/3
./a.out ./exemple/4 > ./s/4
cmp ./exemple/1 ./s/1 > $rez1
cmp ./exemple/2 ./s/2 > $rez2
cmp ./exemple/3 ./s/3 > $rez3
cmp ./exemple/4 ./s/4 > $rez4

echo -e "${BLUE}Début des test ...${NC}"
echo -e ""
if [ $rez1 -eq 0 ]
then
	echo "identiques"
else
	echo "RIP"
fi

if [ $rez2 -eq 0 ]
then
	echo "identiques"
else
	echo "RIP"
fi

if [ $rez3 -eq 0 ]
then
	echo "identiques"
else
	echo "RIP"
fi

if [ $rez4 -eq 0 ]
then
	echo "identiques"
else
	echo "RIP"
fi
rm -rf s
echo -e ""
echo -e "Fin du test"
# rm solv
# echo "yolo" >> solv
# if [ $(cmp solv safe) = $(cat rez) ]
# then
# 	echo "good"
# else
# 	echo "diff"
# fi
# echo "............................."
