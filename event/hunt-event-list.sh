#!/bin/bash
# Title: fzf chooser for event

v_list=./result-event-list.txt
v_item=$(cat event-item.txt | fzf)
v_name=$(cat list-all-dota2-hero-names.txt | fzf -m --prompt="Listar herois: $v_item")

for i in $(echo $v_name)
do
   v_txt="| $v_item | $i"
   echo $v_txt >> $v_list
done
