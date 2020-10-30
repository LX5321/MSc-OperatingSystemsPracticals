# Write a shell script that allows a user to enter his or her top three ice cream flavors. Your script should then print out the name of all three flavors.

read -p "Enter Flavours: " iceCreamFlavour1 iceCreamFlavour2 iceCreamFlavour3

echo "Thank you $USER!"
echo "1: ${iceCreamFlavour1}"
echo "2: ${iceCreamFlavour2}"
echo "3: ${iceCreamFlavour3}"
