#!/bin/bash
if [ "$(id -u)" != "0" ]; then
	echo " Error! : Please Run As Root"
	exit 1
fi
echo "------------------------------------------------------"
if [ "$(lsblk | sed -n '/sdb/,$p' | wc -c)" == "0" ]; then
	echo " Error ! : No Removeable Partitions Found"
	echo " Make Sure You have Memory Media Inserted"
	exit 1
fi
lsblk | sed -n '/sdb/,$p'
echo "------------------------------------------------------"
echo "Choose Your Partion Label: "
read label;
echo "------------------------------------------------------"
ls /media/md/Files_Recover/ISO\'s/ |sort;
echo "------------------------------------------------------"
echo "Choose Your ISO: "
read iso;
echo "------------------------------------------------------"
echo "Writing $iso to /dev/$label. Please Wait... "





















#for i in $(lsblk -r |awk '{ print $1 }'|grep -v md |grep -v loop |grep .*[[:digit:]]|sort|uniq;); 
#do
#    if [ -z  "$(grep  $i /proc/mounts)" ]
#    then  
#        mkdir /mnt/$i;
#        mount /dev/$i /mnt/$i
#    fi
# done
