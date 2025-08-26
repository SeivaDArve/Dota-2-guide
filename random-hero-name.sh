#!/bin/bash
# Title: Give Random DOTA 2 hero name
# Use: Just run the script and get a random hero name

clear
figlet "Dota 2"

v_list=${v_REPOS_CENTER}/Dota-2-guide/list-all-dota2-hero-names.txt

echo "Random hero name"
declare i=$(shuf -i 1-124 -n 1)

echo -ne "Number $i is: "

v_name=$(head -n $i $v_list | tail -n 1)

echo $v_name
