# display all files who have more than 350 bytes of storage
ls -l | cut -c 31-48,56- > b1
tr -s ' ' < b1 >b2
grep "^ [3-9][0-9][0-9]." b2 | sort -rn  