# Write a simple shell script where the user enters a pizza parlor bill total. 
# Your script should then display a 10 percent tip.

clear
echo
echo "$(date)"
echo
read -p "Enter bill : " bill

tip=$(echo "(${bill}*10) / 100" | bc -l)
total=$(echo "scale=2; $tip + $bill" | bc -l)

echo "Bill : $bill"
echo "Tip (10%)  : ${tip}"
echo "--------------------------"
echo "Total      : ${total}"
echo "--------------------------"
