#!/bin/bash
# author:yangzj
# 文件说明：linux shell函数用法及用例

hello() {
    echo $1,$2
    echo $@
    for i in $@
    do 
        echo $i
    done
    return 0
    # return 255 # 仅支持[0-255] 注意：若不指定return且正常执行则返回0
}

hello 1 2 3
echo $?


# test() {
#     echo $1
#     sleep 1
#     test 123
# }
# test 111


