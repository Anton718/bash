#!/bin/bash
homePath="/home/user/Desktop/bash"
pos=0
echo "Hello"
cd $homePath
mkdir test1 test2
echo "created two folders test1 and test2"
sleep 1
cd test1
for n in {0..50}; do
    touch file$pos.txt
    echo "this is file$pos.txt" > file$pos.txt
    ((pos++))
done
sleep 1
echo "created files in test1 with some content"
sleep 1
for i in *; do
        cp $i ../test2/"${i%.*}_copy.${i##*.}"
done
echo "copied files from test1 to test2 changing filenames"
sleep 1
echo "end of programme"
exit 0