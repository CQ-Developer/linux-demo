#!/bin/bash
# how long until your birthday

read -p "input your birthday in form YYYYMMDD: " birthday
birthday_check=$(echo ${birthday} | grep "^[0-9]\{8\}$")
if [ "${birthday_check}" == "" ]
then
    echo "your input $birthday is illegal. must in form {YYYYMMDD}"
    exit 1
fi

date_next=$(date -d ${birthday} +%m%d)
date_now=$(date +%m%d)

i=0
total_days=0
until [ "${date_next}" == "${date_now}" ]
do
    let total_days++
    let i++
    date_now=$(date -d "+${i} days" +%m%d)
done

echo "your birthday is after ${total_days} days."
