#!/bin/bash
echo "Hello world!"
your_name="yangpuqing"
echo $your_name
for skill in Ada Coffe Action java; do
    echo "I am good at ${skill}script"
done

#readonly variable
myUrl="http://www.w3cschool.cc"
readonly myUrl
#delete varible
unset skill
#单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
#双引号里可以出现转义字符
#get the size of string
export string='there is an interesting anouncement'
size_s=${#string}
echo ${size_s}
#extract part of string
echo ${string%%an*}   #delete "an*" leave "there is "
echo ${string%an*}    #delete "anouncement" leave "there*ting "
echo ${string##*an}  #delete "*an" leave "ouncement"
echo ${string#*an}   #delete "*an" laeve " interest*"
echo ${string:1:4}
#find the position of a particular string of characters
echo `expr index "$string" is`
echo "***********************************"
#use array
array_name=(value0 value1 value2 value3)
arrayn=${array_name[3]}
echo "$arrayn+${array_name[@]}"
#pass parameter
echo "***********************************"
echo "Shell pass parameter instance！";
echo "executed file's name:$0";
echo "the first parameter:$1";
echo "the second parameter:$2";
echo "the third parameteter:$3";
echo "the number of parameters:$#";
echo "display all the parameter as a single string:$*";
echo "-- \$* display ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ display ---"
for i in "$@"; do
    echo $i
done
echo "***********************************"
a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]   #the blank character is necessary
then
    echo "a == b"
fi
if [ $a != $b ]
then
    echo "a != b"
fi
echo "************************************"

