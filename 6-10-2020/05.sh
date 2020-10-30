# alert user if string has less than 10 characters in a string
echo "Enter String"
read str

length=`echo $str | wc -c`
length=`echo $length - 1 |bc`
if [ $length -lt 10 ]
then
        echo "You enter have entered less than 10 characters!"
fi