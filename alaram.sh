#!/bin/bash
printf "What time are you setting this alarm for? "
read date
echo Okay! Will ring you on $(date --date="$date").
sleep $(( $(date --date="$date" +%s) - $(date +%s) ));
echo Wake up!
while true; do
  /usr/bin/mpg123 ~/alarm.mp3
  sleep 1
done
