#!/bin/bash

echo '**********************************'
echo 要求系统随机产生一个10以内的数字
echo 用户从键盘输入：
echo a：正确则退出，并显示游戏成功
echo b：错误则提示输入大于或者小于
echo '**********************************'

m=`echo $RANDOM`
temp=$[$m%10]

while :
do
    read -p "请输入一个0到10的整数：" n
    
    if [ $temp == $n ]
    then
        echo "恭喜你猜对了！"
        break
    
    elif [ $temp -gt $n ]
    then
        if [ $n -lt 0 ]
        then
            echo "您输入的数字不在范围内！"
        else
        echo "你输入的数字偏小了！"
    fi
        continue
    
    elif [ $temp -lt $n ]
    then
        if [ $n -ge 10 ]
        then
        echo "您输入的数字不在范围内！"
    else
        echo "您输入的数字偏大了！"
    fi
        continue
    
    fi
done
echo "您已经退出游戏"
