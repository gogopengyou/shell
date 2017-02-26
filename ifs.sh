#!/bin/bash
# author:yangzj
# 文件说明：linux默认分隔符

# test="1 2 3 4 5" 默认分隔符为空白符
test="1 2   3   4   5"
for i in $test 
do 
    echo $i
done

### 
data="1,2,3,4,5"
for i in $data
do
    echo $i
done

old_ifs=$IFS
IFS=","
for i in $data
do
    echo $i
done
IFS=$old_ifs

###
for i in $test 
do 
    echo $i
done

# shell的列表生成式
echo {1..10}
echo {a..z}


