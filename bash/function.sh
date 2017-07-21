#!/bin/bash
#Author:elike
funWithReturn(){
    echo "this function can return the sum of two number"
    echo "please input the first number:"
    read aNum
    echo "please input the other number:"
    read anotherNum
    echo -e "${aNum} + ${anotherNum} = \c"
    sumNum=`expr ${aNum} + ${anotherNum}`
    echo $sumNum
    return ${sumNum}   
}

funWithReturn
#*************************8
funWithParam(){
    echo "the first parameter is $1 !"
    echo "the second parameter is  $2 !"
    echo "the nineth parameteris $9 !"
    echo "the tenth parameter is ${10} !"
    echo "the eleventh parameter is ${11} !"
    echo "the number or input parameters is $# !"
    echo "output the input as a tring : $* !"
    echo "$0"
}
funWithParam 1 2 3 4 5 6 7 8 9 10 11 12 13
