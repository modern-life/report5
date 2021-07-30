#!/bin/bash


if [ $# -eq 1 ] ;then
echo "文字を2つ入力してください"  1>&2
exit 1
fi

if [ $# -ge 3 ] ;then	
echo "入力できる文字は2つまでです"
exit 1
fi

if  [ "$1" = 0 ] ;then
echo "1つ目に入力した文字に問題があります 0の最大公約数はありません"

	elif expr "$1" : "[0-9]*$" >/dev/null ; then  	 
	if  [  "$2" = 0  ] ;then
		echo "2つ目に入力した文字に問題があります 0の最大公約数はありません"
		elif expr "$2" : "[0-9]*$" >/dev/null ;   then
		
		e=$1
	   	if  [ "$2" -lt "$e" ] ;then
  		e=$2

		fi
			while [ "$e" -ne  0 ] ;do
<<<<<<< HEAD
				x=$(("$1" % "$e"))
				y=$(("$2" % "$e"))
=======
			x=$(( "$1" % "$e"))
			y=$(( "$2" % "$e"))
>>>>>>> dd4edb096e6e31a4b8319ac2575722594aea64b7
			if  [ "$x" = 0 ] && [ "$y" = 0  ] ;then
		echo "$1と$2の最大公約数は$eです"
		break

	fi
<<<<<<< HEAD
	e=$(("$e" - 1 ))
=======
        e=$(( "$e" - 1 ))
>>>>>>> dd4edb096e6e31a4b8319ac2575722594aea64b7
	done
	else 
	echo "2つ目に入力した文字に問題があります 自然数を入れてください"	
	exit 1
	fi	
else
	echo "1つ目に入力した文字に問題があります 自然数を入れてください"
exit 1 
fi
