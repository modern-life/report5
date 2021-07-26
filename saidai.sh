#!/bin/bash

echo "一つ目の自然数を入れてください"
read a

if  [  $a -eq 0  ] ;then
echo "0の最大公約数はありません"

	elif expr $a : "[0-9]*$" >/dev/null ; then  	
	echo "二つ目の自然数を入れてください"	
	read i
	if  [  $i -eq 0  ] ;then
		echo "0の最大公約数はありません"
		elif expr $i : "[0-9]*$" >/dev/null ;   then
		
		e=$a
	   	if  [ $i -lt $e ] ;then
  		e=$i
	
		fi
			while [ $e -ne  0 ] ;do
			x=`expr $a % $e`
			y=`expr $i % $e`
			if  [ $x -eq 0 -a $y -eq 0  ] ;then
		echo "$aと$iの最大公約数は$eです"
		break

	fi
	e=`expr $e - 1`
	done
	else 
	echo "自然数を入れてください"	
	exit 1
	fi	
else
	echo "自然数を入れてください"
exit 1
fi
