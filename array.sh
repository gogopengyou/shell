#!/bin/bash
# author:yangzj
# 文件说明：linux数组用法及用例

# arr=(1,2,3,4,5) error
# 注意数组间元素以空格分开
arr=(1 2 3 4 5)
# echo arr[0] error
# echo $arr[0] error
echo ${arr[0]}
echo ${arr[1]}
# echo ${#arr} error
echo ${#arr[*]}

echo ${arr[*]}
echo ${arr[@]}

for i in ${arr[*]}
do
echo $i
done

for i in ${arr[@]}
do
echo $i
done

# Map数组
declare -A map 
map=([key1]=value1 [key2]=value2)
echo ${map[key1]}
echo ${map[key2]}

# keySet
echo ${!map[*]}
echo ${!arr[*]}
