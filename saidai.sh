#!/bin/bash


echo "一つ目の自然数を入れてください"
read a
if expr $a : "[0-9]*$" >&/dev/null; then  	
	echo "二つ目の自然数を入れてください"
	read  i 
	if expr $i : "[0-9]*$" >&/dev/null ;then
  	 	x=$a
	 	y=$i 
		while [ $y -ne 0 ];do		
		keisan=$(( $x % $y ))
		x=$y
		y=$keisan
		  
	done
	echo "$aと$iの最大公約数は$xです"
	else 
	echo "自然数を入れてください"	
	fi			
else
echo "自然数を入れてください"
fi
