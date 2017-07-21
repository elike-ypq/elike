#!/bin/bash
#Author:elike
file="/home/elike/study/bash/test.sh"  #absolute path should be used
echo "file path is $file"
if [ -r $file ]
then
   echo "the file is readable"
else
   echo "the file is unreadable"
fi
if [ -w $file ]
then
   echo "the file is writeable"
else
   echo "the file is unwriteable"
fi
if [ -x $file ]
then
   echo "the file can be executed"
else
   echo "the file cannot be executed"
fi
if [ -f $file ]
then
   echo "the file is nommon file"
else
   echo "the file is special file"
fi
if [ -d $file ]
then
   echo "the file is a directory listing"
else
   echo "the file isn't a directory listing"
fi
if [ -e $file ]
then
   echo "the file path is valid"
else
   echo "the file path is invalid"
fi
if [ -s $file ]
then
   echo "the file is not empty"
else
   echo "the file is empty"
fi
