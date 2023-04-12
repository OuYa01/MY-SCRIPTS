#!/bin/bash
printf "%*s\n" $(( ($(tput cols) + 21) / 2 ))  '' | tr ' ' -
echo -e "\033[44mHello sir OuYa\033[0m"
# Check that a filename was provided as an argument
if [ -z "$1" ]
then
  echo "Usage: $0 <filename>"
  exit 1
fi

printf "%*s\n" $(( ($(tput cols) + 29) / 2 ))  '' | tr ' ' -
echo -e "\033[44mHave a good luck with complier\033[0m"
# Compile the code
gcc -Wall -Werror -Wextra -pedantic "$1" -o "${1%.*}"

printf "%*s\n" $(( ($(tput cols) + 29) / 2 ))  '' | tr ' ' -
echo -e "\033[44mHave a good luck with Betty\033[0m"

# Check the code with Betty
betty "$1"

