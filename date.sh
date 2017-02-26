#!/bin/bash -xv
# author:yangzj
# 文件说明：linux日期用法及用例

date

# 纪元秒
date +%s 

d1=$(date +%s)
sleep 1
d2=$(date +%s)
echo "$d2-$d1=$[$d2-$d1]"
# let count=$d2-$d1
# echo $count 

date "+%D %H:%M:%S"

date --date "2017-02-25"
date --date "2/24/2017"
# date --date "23/02/2017" error

d3=$(date --date "2017-02-25 13:11:11" +%s)
d4=$(date --date "02/24/2017" +%s)
echo "$d3 - $d4 = $[$[$d3-$d4]/(24*60*60)] 天"
interval_day=`echo "scale=2;$[$d3-$d4]/(24*60*60)" | bc`
echo "$d3 - $d4 = $interval_day 天"

# 读取命令输出： `` or $()
# 反引用 or subshell
