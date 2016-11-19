#!/bin/sh
# Check External IP script (2016-11-19)
# Check external IP address and send it at email if it was changed.

SUBJ="Raspberry Pi IP updated"
EMAIL="yourmail@example.com"

# read last remembered address from file to IP1
IP1=""; read IP1 < ip.txt

# trying to write current address from external service to IP2
# wget -q is quiet mode, wget -O is stdout output
IP2=""; IP2=$(wget -qO- whatismyip.akamai.com)

# exit if nothing wasn't received
if [ "$IP2" = "" ]; then exit;

# exit if it wasn't changed
elif [ "$IP2" = "$IP1" ]; then exit;

else
  # write new address to file
  echo "$IP2" > ip.txt
  # send mail
  echo "$IP2" | mail -s "$SUBJ" $EMAIL
  exit
fi
