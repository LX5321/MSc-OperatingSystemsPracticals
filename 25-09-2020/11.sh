# Write a shell script that allows a user to enter any existing file name. The program should then copy file to /tmp directory.

read -p "Enter any file name : " filename
cp $filename /tmp
