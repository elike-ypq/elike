#!/bin/bash
#Author:elike
a=10
b=20

if [ $a -eq $b ]
then
   echo "$a -eq $b : a == b"
else
   echo "$a -eq $b: a != b"
fi
if [ $a -ne $b ]
then
   echo "$a -ne $b: a != b"
else
   echo "$a -ne $b : a == b"
fi
if [ $a -gt $b ]
then
   echo "$a -gt $b: a > b"
else
   echo "$a -gt $b: a <= b"
fi
if [ $a -lt $b ]
then
   echo "$a -lt $b: a < b"
else
   echo "$a -lt $b: a >= b"
fi
if [ $a -ge $b ]
then
   echo "$a -ge $b: a >= b"
else
   echo "$a -ge $b: a < b"
fi
if [ $a -le $b ]
then
   echo "$a -le $b: a <= b"
else
   echo "$a -le $b: a > b"
fi
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "return true"
else
   echo "return false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "return true"
else
   echo "return false"
fi
