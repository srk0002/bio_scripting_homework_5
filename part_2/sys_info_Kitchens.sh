#!/bin/bash

#time and date
echo "Date:" > sys_info_Kitchens.txt
 date '+%I:%M%p %b %e, %Y' >> sys_info_Kitchens.txt
echo " " >> sys_info_Kitchens.txt
#list of all logged-in users
###sort by user and awk the first column. Only user name displayed

#who | sort | awk '{print $1}'

#logged-in users

echo "Logged-in Users:" >> sys_info_Kitchens.txt
users >> sys_info_Kitchens.txt
echo " " >> sys_info_Kitchens.txt

#system uptime
echo "System Uptime:" >> sys_info_Kitchens.txt
uptime >> sys_info_Kitchens.txt
echo >> sys_info_Kitchens.txt
#sleep one minute

sleep 60m
(echo "------------------------------------------------------------"; echo "One Hour Later") >> sys_info_Kitchens.txt
echo "Date:" >> sys_info_Kitchens.txt
date '+%I:%M%p %b %e, %Y' >> sys_info_Kitchens.txt
echo " " >> sys_info_Kitchens.txt

(echo "Logged-in Users:";  users; echo " ") >> sys_info_Kitchens.txt
(echo "System Uptime:"; uptime; echo " ") >> sys_info_Kitchens.txt


