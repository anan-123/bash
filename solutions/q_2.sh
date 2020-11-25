
#!/bin/bash


find -type d -printf %p -printf " " -printf %k -printf "KB" -printf "\n"
echo
find -type d | while read apple 

do
echo -n $apple

printf " $(ls "$apple" | wc -l )"
echo " files"
done
