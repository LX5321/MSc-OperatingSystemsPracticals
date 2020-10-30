# Write a shell program to read a number *such as 123) and find the sum of digits (1+2+3=6).
# sum of all digits - shell script

echo "Enter a number"
read num

sum=0

while [ $num -gt 0 ]
do
    mod=`expr $num % 10`    #It will split each digits
    sum=`expr $sum + $mod`  #Add each digit to sum
    num=`expr $num / 10`    #divide num by 10.
done

echo $sum
