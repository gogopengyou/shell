#!/bin/bash
# author:yangzj
# 文件说明：linux 计算相关命令用法及用例

# let (()) [] expr bc

count=11
echo "count="$count
let count++
echo "count++ : "$count
let count-=2
echo "count-=2 : "$count

echo $((count+50))
echo $((count + 50))
echo $[count+50]
echo $[count + 50]
echo $(expr count+50)
echo $(expr $count+50)
echo $(expr $count + 50)

echo $[3*6]
echo $[3.14*0.618]
echo "3.14*0.618" | bc
echo "10^2" | bc
echo "sqrt(4)" | bc
echo "obase=2;ibase=10;1024" | bc
temp=$(echo "obase=2;ibase=10;1024" | bc)
echo $temp
echo "obase=10;ibase=2;$temp" | bc 
