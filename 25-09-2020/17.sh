# Write a shell script that display one of ten unique fortune cookie message, at random each it is run.
r=$(( $RANDOM%10+0 ))

# Quotes author name
author="\t --Alexander Rodrigues"

# Store cookies or quotes in an array
array=(
	"Awesome Quotes 1"
	"Awesome Quotes 2"
	"Awesome Quotes 3"
	"Awesome Quotes 4"
	"Awesome Quotes 5"
	"Awesome Quotes 6"
	"Awesome Quotes 7"
	"Awesome Quotes 8"
	"Awesome Quotes 9"
	"Awesome Quotes 10"
	)

# Display a random message
echo 
echo ${array[$r]}
echo -e "$author"
echo
