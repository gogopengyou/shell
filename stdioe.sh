#!/bin/bash
# author:yangzj
# 文件说明：linux 文件描述符及重定向用法及用例

# stdin stdout stderr
# 0     1       2

# ls +
ls + 2>/dev/null
ls + 2>stderr.log.tmp
ls 1>stdout.log.tmp

cat stderr.log.tmp
cat stdout.log.tmp

rm -f *.log.tmp

# 1&2
# cmd &> /dev/null

# tee 在输出可以截存的情况下继续往后传递（作为后续输入流）
echo 123 | tee stdout.log | cat
cat stdout.log
rm -f stdout.log

# stdin可简写为- 
echo -e "123\n456\n789" | cat -n -

