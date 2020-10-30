# Write a shell script that allows a user to enter any Internet domain name (host name such as www.cyberciti.biz). Your script should than print out the IP address of the Internet domain name.

read -p "Enter domain name : " userDomainName
host "${userDomainName}"
