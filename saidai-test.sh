#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp$$-result"



#一つ目の文字を入力する

#一つ目の文字が自然数か判定

#自然数でなかった場合
echo "自然数を入れてください" > ${ans}
'./saidai.sh' i=-1 > ${result}
diff ${ans} ${result} || exit 1
#0が入力された場合
echo "0の最大公約数はありません" > ${ans}
`./saidai.sh` i=0 >${result}
diff ${ans} ${result} || exit 1

rm /tmp/$$-*

