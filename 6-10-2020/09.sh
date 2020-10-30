# if file is a dir list files or else if file count number of lines.

echo -n \"Enter file or dir name : \"
read name

if [ -d $name ]
then
    echo \"Give name is directory\"
elif [ -f $name ]
then 
    echo \"File name is : $name\"
    echo \"No of line in file is : \`wc -l $name | cut -d\" \" -f1\`\"
fi 