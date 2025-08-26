#!/bin/bash
# Title: Dota 2 Guide
# Description: Interactive menu to co-op during a game







# Sourcing DRYa Lib 1: Color schemes
   v_lib1=${v_REPOS_CENTER}/DRYa/all/lib/drya-lib-1-colors-greets.sh
   [[ -f $v_lib1 ]] && source $v_lib1 || (read -s -n 1 -p "DRYa: error: drya-lib-1 does not exist " && echo)

   v_greet="Dota 2"
   v_talk="Dota: "

   # Examples: `db` (an fx to use during debug)
   #           f_greet, f_greet2, f_talk, f_done, f_anyK, f_Hline, f_horizlina, f_verticline, etc... [From the repo at: "https://github.com/SeivaDArve/DRYa.git"]





clear

function f_title {
   figlet "Dota 2 Guide"
}

function f_horizline {
	_count=$(tput cols)
	for i in $(seq $_count); do
	   	echo -ne "-" 
	done
}

function f_time {
   echo "
   Time: 20:20 (day)
   "
}

function f_presentation { 
   f_title

   f_horizline

   f_time

   echo "
   Close app: ------------ | Ctrl-C
   Start/Stop: ----------- | S
   Re-difine current time: | T
   Roshan killed: -------- | R
   Add +5 secs to timer: - | +
   Add -5 secs to timer: - | -"

   f_horizline

}

function f_exec {
   f_presentation 
}

if [ -z $1 ]; then
   f_exec

elif [ $1 == "." ]; then
   vim ${v_REPOS_CENTER}/Dota-2-guide/dota-2-guide.sh

elif [ $1 == "r" ]; then

   if [ -z $2 ]; then
      bash ${v_REPOS_CENTER}/Dota-2-guide/random-hero-name.sh

   elif [ $2 == "web" ]; then
      f_greet
      f_talk; echo "A abrir no youtube: Gameplay de heroi aleatorio"
      v_list=${v_REPOS_CENTER}/Dota-2-guide/list-all-dota2-hero-names.txt
      declare i=$(shuf -i 1-124 -n 1)
      v_name=$(head -n $i $v_list | tail -n 1)
      echo " > $v_name"
      v_search="dota 2 gameplay $v_name"
      
      url="https://www.youtube.com/results?search_query=$v_search"

      xdg-open "$url"
   fi
   
fi
