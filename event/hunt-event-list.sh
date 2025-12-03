#!/bin/bash
# Title: fzf chooser for event

v_list=./result-event-list.txt
v_list=./result-event-list-2.txt

function f_create_list {
   v_item=$(cat event-item.txt | fzf)
   v_name=$(cat list-all-dota2-hero-names.txt | fzf -m --prompt="Listar herois: $v_item: ")

   clear

   for i in $(echo $v_name)
   do
      v_txt="| $v_item | $i"
      echo $v_txt >> $v_list
   done
}

function f_filter_list_by_hero {
   v_name=$(cat list-all-dota2-hero-names.txt | fzf -m --prompt="Dota2: Listar os 3 adversarios da caçada: ")

   clear

   echo "Escolhido (filtro: heroi)"
   for i in $(echo $v_name)
   do
      echo " > $i"
   done
   echo


   for i in $(echo $v_name)
   do
      grep --color="auto" $i $v_list
      echo
   done

}

function f_filter_list_by_item {
   v_item=$(cat event-item.txt | fzf -m --prompt="Dota2: Listar itens: ")

   clear

   echo "Escolhido (filtro: item)"
   for i in $(echo $v_item)
   do
      echo " > $i"
   done

   echo

   for i in $(echo $v_item)
   do
      grep --color="auto" $i $v_list
      echo
   done

}
#f_create_list
f_filter_list_by_hero
#f_filter_list_by_item
