#!/bin/bash
sudo ifconfig wlan0 down
echo " Wireless Device Down "
sudo macchanger -m 00:11:22:33:44:55 wlan0
sudo ifconfig wlan0 up
sleep 1
echo 
echo "Wireless Device Up" 
echo "MAC Spoofed to 00:11:22:33:44:55"
echo "					       			Script By: M.D"
