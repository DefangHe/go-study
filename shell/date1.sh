#!/bin/bash
var=`expr 100 - 20 + 100`
echo $var
a=10086
b=100

var=`expr $a + $b`
echo "$a + $b = $var "

var=`expr $a - $b`
echo "$a - $b = $var"

var=`expr $a \* $b`
echo "$a * $b = $var"

var=`expr $a / $b`
echo "$a / $b = $var"

if [ $a != $b ]
then
    echo "$a != $b"
fi

if [ $a == $b ]
then
    echo "$a == $b"
fi

read name
echo "read test is $name "

echo `date`
