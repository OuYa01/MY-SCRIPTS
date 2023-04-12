#!/bin/bash

if [ -z "$1" ]; then
echo "Usage: $0 <main_file>"
exit 1
fi

printf "%*s\n" $(( ($(tput cols) + 21) / 2 )) '' | tr ' ' -
echo -e "\033[44mHello OuYa, sir.\033[0m"

printf "%*s\n" $(( ($(tput cols) + 29) / 2 )) '' | tr ' ' -
echo -e "\033[44mCompiling...\033[0m"

#Compile the main file and the additional file
gcc -Wall -pedantic -Werror -Wextra -std=gnu89 "$1" -o "${1%.*}"

printf "%*s\n" $(( ($(tput cols) + 29) / 2 )) '' | tr ' ' -
echo -e "\033[44mGood luck with Betty!\033[0m"

#Check the file with Betty
betty "$1"
