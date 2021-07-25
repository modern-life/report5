#!/bin/bash

echo "一つ目の自然数を入れてください"
read a

if [ $a -eq 0 ];then
echo "0入れないで！"
	elif expr $a : "[0-9]*$" >/dev/null ; then  	
	echo "二つ目の自然数を入れてください"	
	read i
		if [ $i -eq 0 ];then
		echo "0入れないで！"
	

		elif expr $i : "[0-9]*$" >/dev/null ; then
  		
			x=$a
			y=$i 
		while [ $y -ne 0 ];do		
	
		keisan=$(( $x ))
		x=$y
		y=$keisan
		  
	done
	echo "$aと$iの最大公約数は$xです"
	else 
	echo "自然数を入れてください"	
	exit 1
	fi	
else
	echo"自然数を入れてください"
exit 1
fi
