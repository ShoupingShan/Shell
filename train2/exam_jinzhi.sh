#! /bin/bash
#十进制20
((x=20))
echo "$x"
#八进制
((x=020))
echo "$x"
#十六进制
((x=0x20))
echo "$x"

:<<BLOCK
或者使用#来表示,方法如下:
BLOCK
#二进制
((x="2#100000"))
echo "$x"
#八进制
((x=8#123))
echo "$x"
#十六进制
((x=16#32))
echo "$x"
