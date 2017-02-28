#!/bin/bash
# author:yangzj
# 文件说明：shell sed 用法及用例

echo -e "1111111\n\n" > test_txt
echo "aaaaaaa" >> test_txt

# cat test_txt
sed -i "s/111/ok/g" test_txt
# cat test_txt

sed "/^$/d" test_txt


rm -f test_txt