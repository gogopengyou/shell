#!/bin/bash
# author:yangzj
# 文件说明：linux变量用法及用例

# 注意赋值：等号左右无空格
test=123
echo $test
echo ${test}
echo "look at this:$test"
echo "look at this:${test}"

# 系统环境变量
echo $PWD;echo $SHELL;echo $PATH;echo $UID

# 环境变量使用层次 1.export仅当前shell可用 2. ./bashrc当前用户可用 3./etc/profile 所有用户可用

echo "test is: $test,it's length:${#test}"
if [ ${#test} -lt 8 ];then 
echo "it's too short"
else 
echo "it's fit!"
fi

