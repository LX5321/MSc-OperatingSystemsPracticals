#Write a shell script that, given a file name as the argument will count English language articles such As 'A', 'An' and 'The'.

echo -n "Enter a file name : "
read file

# variables to store the count of articles.
a=0
the=0
an=0

# making sure the file exists
if  [ ! -f $file ]
then
	echo "$file not a file!"
	exit 1
fi
 
# put while loop to read a $file
while read line
do
       #process each word 
	for w in $line 
	do
		# convert word to lowercase; so that we can count ThE, THE, the, THe etc all
		lword="$(echo $w | tr '[A-Z]' '[a-z]')"
 
		# is it 'a' article?
		[ $lword = "a" ] && (( a++ )) || :
		[ $lword = "the" ] && (( the++ )) || :
		[ $lword = "an" ] && (( an++ )) || :
	done
done < $file
 
# display stats
echo "a: $a"
echo "the: $the"
echo "an: $an"
