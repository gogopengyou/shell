#!/bin/bash
# author:yangzj
# 文件说明：检查当前目录下的shell脚本，如果没有执行权限则加上

for file_name in *.sh
do 
    if [ ! -x $file_name ];then 
        echo $file_name
        chmod a+x $file_name
        ls -l $file_name
    fi
done
