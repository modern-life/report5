#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"
err="/tmp/$$-error"


#引数の数が足りない場合

echo "文字を2つ入力してください" > ${ans}
./saidai.sh 1 > ${result}
diff ${ans} ${result} || echo "error in 1-1" >> ${err}

#引数の数が3つ以上の場合

echo "入力できる文字は2つまでです" > ${ans}
./saidai.sh 1 2 3 > ${result}
diff ${ans} ${result} || echo "error in 1-2"  >> ${err}


#1つ目に入力された文字が自然数でなかった場合

echo "1つ目に入力した文字に問題があります 自然数を入れてください" > ${ans}
./saidai.sh a 10 > ${result}
diff ${ans} ${result} || echo "error in 2-1" >> ${err}

#1つ目に入力されたが文字が0だった場合

echo "1つ目に入力した文字に問題があります 0の最大公約数はありません" > ${ans}
./saidai.sh 0 9 > ${result}
diff ${ans} ${result} || echo "error in 2-2" >> ${err}


#2つ目に入力された文字が自然数でなかった場合

echo "2つ目に入力した文字に問題があります 自然数を入れてください" > ${ans}
./saidai.sh 20 b > ${result}
diff ${ans} ${result} || echo "error in 3-1"  >> ${err}

#2つ目に入力された文字が0だった場合

echo "2つ目に入力した文字に問題があります 0の最大公約数はありません" > ${ans}
./saidai.sh 5 0  > ${result}
diff ${ans} ${result} || echo "error in 3-2"  >> ${err}

#2つの文字がどちらも自然数だった場合-最大公約数判定

echo "$1と$2の最大公約数は$eです" > ${ans}
./saidai.sh 20 30 > ${result}
diff ${ans} ${result} || exit 0




if [ -f ${err} ]; then
	cat ${err}
	rm /tmp/$$-*
	exit 1
fi
