#!/bin/bash
# author:yangzj
# 文件说明：shell awk 用法及用例

echo "1 2 3 4 " > test_txt
echo "a b c d e " >> test_txt
echo "x y z " >> test_txt

cat -n test_txt | awk 'BEGIN{i=0} {i++} END{print i}'

// 文本迭代
awk '{print}' test_txt

awk 'BEGIN{getline;print $4} {print NR,NF;print $0 $1 }' test_txt

# NR
# NF
# $0 当前行全部文本
# $1 $2 $3 ...
# getline

rm -f test_txt


