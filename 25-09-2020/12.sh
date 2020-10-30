# Write a shell script that allows a user to enter directory name. The program should then create directory name in /tmp directory.

read -p "Enter the name of a directory: " directoryName
mkdir "/tmp/${directoryName}"
