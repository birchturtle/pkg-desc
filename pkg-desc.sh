#!/bin/sh

if [ -z $1 ]; then
	echo "Please specify a pkg"
	exit 1
fi

if  echo "$1"|grep -Eq  "/" ; then
	if [ -f /usr/ports/$1/pkg-descr ]; then
		bat /usr/ports/$1/pkg-descr
	else
		echo "That particular package can't be found.."
		newpath="${1#*/}"
		search=$(find /usr/ports/ -iname $newpath)
		if [ -z $search ]; then
			echo "sorry.."
			exit 1
		else 
			echo "Did you mean..?"
			echo $search
		fi
	fi
else
	echo 'Missing category in ports root, did you mean..?'
	echo  $(find /usr/ports/ -iname $1)
fi	
