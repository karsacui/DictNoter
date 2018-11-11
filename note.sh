#!/bin/bash
IFS_OLD=$IFS
IFS=$'\n'
conv(){
for i in $*; do
grep -i 00000"$i"lllll dictyh1.html >>./output/${name/"txt"/"html"}
[ $? -eq 1 ] && echo "$i "
done
sed --quiet --in-place 's#.*\(</font><hr color=blue.*\)#\1#p' ./output/${name/"txt"/"html"}
sed -i "1i\<font color=blue size=+4><b>${name/".txt"/}</b></font>" ./output/${name/"txt"/"html"}
sed -i 's!^</font><hr color=blue noshade>!<hr style=" height: 4px; border: none; background-color: blue">!g' ./output/${name/"txt"/"html"}
sed -i 's!<hr color=blue noshade>!<hr style=" height: 1px; border: none; background-color: blue">!g' ./output/${name/"txt"/"html"}
sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' ./output/${name/"txt"/"html"}  
}
fun(){
for i in $*; do
name=$i
echo "now processing " $name
conv $(less ./input/$i)
done
}
files=$(ls ./input/)
rm -rf ./output/*
fun $files
IFS=$IFS_OLD
