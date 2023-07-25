#!/bin/bash
# Title: Give Random DOTA 2 hero name
# Use: Just run the script and get a random hero name

clear

figlet "Dota 2"; echo "Random hero name"
declare i=$(shuf -i 1-124 -n 1)

echo -ne "Nnumber $i is: "

head -n $i ./list-all-dota2-hero-names.txt | tail -n 1
