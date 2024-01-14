#!/bin/bash


###################################################
# Sort out negatives
# myArray=(1 2 4 67 -5 2 -7 34 23 -87 44)
# negatives=()
# pos=0

# for i in ${myArray[@]}; do
#     if [[ $i -lt 0 ]]; then
#         negatives[pos]=$i
#         ((pos++))
#     fi
# done

# echo ${negatives[@]}
# -5 -7 -87
####################################################
#On input we have two arrays, we need to make one where "letters" 
#follow the order of numbers in the second array using these numbers as indexes.
# 
# myValues=("c" "b" "a" "d")
# myIndexes=(2 1 0 3)
#
# myValues=("z" "x" "y")
# myIndexes=(0 2 1)
# dummy=(0 1 2 3 4 5 6 7 8 9 10)
# final=()
# pos=0
# for i in ${!myValues[@]}; do
#     for j in ${!myIndexes[@]}; do
#         if [[ $j == $i ]]; then
#             for m in ${dummy[@]}; do
#                 for n in ${myIndexes[@]}; do
#                     if [[ $m == $n ]]; then
#                     dummy[${myIndexes[$j]}]=${myValues[$i]}
#                     fi
#                 done
#             done
#         fi
# done
# done
# re="[0-9]"
# for s in ${dummy[@]}; do
#     if [[ $s =~ $re ]]; then
#         continue
#     else
#         final[pos]=$s
#         ((pos++))
#     fi
# done

#  echo ${final[@]}

# a b c d
# z y x
##################################################
# myArray=( 1 2 3 4 5 "x" 6 7 8 9 10 11 "x" 12 13 14 15 )
# Cut out a slice of arrya between two "x""x".
# myFinal=()
# onOff=true
# result=""

# for j in ${myArray[@]};
#     do
#         if [[ $onOff == true ]]; then
#             if [[ $j != "x" ]]; then
#                 continue
#             else
#                 if [[ $j == "x" ]]; then
#                         onOff=false
#                         continue
#                 fi
#             fi
#         fi
#         if [[ $onOff == false ]]; then
#             if [[ $j != "x" ]]; then
#                 myFinal+=($j)
#             else
#                 if [[ $j == "x" ]]; then
#                         onOff=true
#                 fi
#             fi
#         fi   
#     done
# for m in ${myFinal[@]};
#     do
#         result+="$m,"
#     done

# echo $result 

#6,7,8,9,10,11,
########################################################
# On input we have an array, we need to make a new array with distinct numbers only

# myArray=( 1 2 3 1 2 3 4 5 6 )
# myFinal=()

# for i in ${myArray[@]};
# do
# count=0
# for j in ${myArray[@]};
# do
#     if [[ $i == $j ]];
#     then
#         count=$((count+1))
#     fi
# done
#     if [[ $count == 1 ]]; 
#     then
#     myFinal+=($i)
#     fi
# done

# for l in ${myFinal[@]};
# do
#     echo $l
# done
# 4 5 6
##########################################################