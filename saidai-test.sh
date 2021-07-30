#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"



#1つ目に入力された文字が自然数でなかった場合

echo "1つ目に入力した文字に問題があります 自然数を入れてください" > ${ans}
./saidai.sh a 10 > ${result}
diff ${ans} ${result} || exit 1

#1つ目に入力されたが文字が0だった場合

echo "2つ目に入力した文字に問題があります 0の最大公約数はありません" > ${ans}
./saidai.sh 0 9 >${result}
diff ${ans} ${result} || exit 1


#2つ目に入力された文字が自然数でなかった場合

#2つ目に入力された文字が0だった場合


#2つの文字がどちらも自然数だった場合-最大公約数判定

rm /tmp/$$-*

