# Write a shell script that allows a user to enter three file names. The program should then copy all files to USB pen.
usbLocation="/media/usb"

read -p "Enter 3 file names : " fileOneLocation fileTwoLocation fileThreeLocation
cp -v "$fileOneLocation" "$fileTwoLocation" "$fileThreeLocation" $usbLocation
