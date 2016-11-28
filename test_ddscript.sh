for i in $(lsblk -r |awk '{ print $1 }'|grep -v md |grep -v loop |grep .*[[:digit:]]|sort|uniq;); 
do
    if [ -z  "$(grep  $i /proc/mounts)" ]
    then  
        mkdir /mnt/$i;
        mount /dev/$i /mnt/$i
    fi
 done

