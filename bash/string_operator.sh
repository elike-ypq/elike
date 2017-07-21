#!/bin/bash
#Author:elike
a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a = $b : a == b"
else
   echo "$a = $b: a != b"
fi
if [ $a != $b ]
then
   echo "$a != $b : a != b"
else
   echo "$a != $b: a == b"
fi
if [ -z $a ]
then
   echo "-z $a : the length of string is 0"
else
   echo "-z $a : the length of string is not 0"
fi
if [ -n $a ]
then
   echo "-n $a : the length of string is not 0"
else
   echo "-n $a : the length of string is 0"
fi
if [ $a ]
then
   echo "$a : the string is not empty"
else
   echo "$a : the string is empty"
fi
