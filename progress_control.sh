#!/bin/bash
#Author:elike
echo "please input a number ranged from 1 to 4"
read aNum
case $aNum in
    1)  echo 'you have chosen 1'
    ;;
    2)  echo 'you have chosen 2'
    ;;
    3)  echo 'you have chosen 3'
    ;;
    4)  echo 'you have chosen 4'
    ;;
    *)  echo 'you have not input a number in the range of 1 to 4'
    ;;
esac
#if else
a=10
b=20
if [ $a == $b ]
then
   echo "a == b"
elif [ $a -gt $b ]
then
   echo "a > b"
elif [ $a -lt $b ]
then
   echo "a < b"
else
   echo "don't have a case is belong to this condition"
fi
#for
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

for str in 'This is a string'
do
    echo $str
done
#while
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done
#break
while :
do
    echo -n "please input a number between 1 to 5:"
    read bNum
    case $bNum in
        1|2|3|4|5) echo "the input number is $bNum !"
        ;;
        *) echo "the input number is not proper,the game is ove"
            break
        ;;
    esac
done
