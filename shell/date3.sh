#!/bin/bash

cd /bin

if test -e ./bash -o -e ./nofile
then
    echo "有目录存在"
else
    echo "目录不存在"
fi

