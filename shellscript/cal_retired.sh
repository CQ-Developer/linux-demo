#!/bin/bash

echo "This program will try to calculate:"
echo "how many days before your demobilization date..."

read -p "please input your demobilization date (YYYYMMDD) :" input_date
checked_date=$(echo $input_date | grep '[0-9]\{8\}')

if [ "" == "$checked_date" ]; then
	echo "Invalied input..."
	exit 1
fi

seconds_now=$(date +%s)
seconds_dem=$(date -d $input_date +%s)
seconds_res=$(($seconds_dem-$seconds_now))

if [ "$seconds_res" -lt "0" ]; then
	echo "you bad been demobilization before $((-1*$seconds_res/60/60/24)) days ago."
else
	echo "your demobilization date is after $(($seconds_res/60/60/24)) days."
fi

exit 0
