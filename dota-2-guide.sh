#!/bin/bash
# Title: Dota 2 Guide
# Description: Interactive menu to co-op during a game

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
   bash ${v_REPOS_CENTER}/Dota-2-guide/random-hero-name.sh
   
fi
