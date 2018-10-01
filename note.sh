#!/bin/bash
IFS_OLD=$IFS
IFS=$'\n'
conv(){
for i in $*; do
    grep -i 00000"$i"lllll dictyh1.html >>./output/${name/"txt"/"html"}
done
    sed --quiet --in-place 's#.*\(</font><hr color=blue.*\)#\1#p' ./output/${name/"txt"/"html"}
    sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' ./output/${name/"txt"/"html"}  
}
fun(){
for i in $*; do
name=$i
conv $(less ./input/$i)
done
}
files=$(ls ./input/)
fun $files
IFS=$IFS_OLD
