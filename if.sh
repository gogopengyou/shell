#!/bin/bash
# author:yangzj
# 文件说明：shell条件判断

# age=18
age=31
if [ $age -lt 18 ];then
echo "少年"
elif [ $age -ge 18 -a $age -le 30 ];then
echo "青年"
else 
echo "Hmmm"
fi

age=100
# if条件简写
[ $age -eq 100 ] && echo "wow"
[ $age -eq 1 ] || echo "条件为假才会执行后面的操作～"

# 文件/权限判断
# [ -e xxx ]
# [ -f xxx ]
# [ -d xxx ]
# [ -r xxx ]
# [ -w xxx ]
# [ -x xxx ]

# 字符串比较
# = == != < >
# -z 空则真
# -n 非空真
