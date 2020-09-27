#!/bin/bash

# Basic script created in CST8305 Linux Administration 
# Created by Patrick Zapata, procedure derived from Melissa Sienkiewicz

echo System Summary
echo ==============

# Create variables for system summary 
user=$(echo $USERNAME)
date=$(date)
cores=$(nproc --all)
uptime=$(uptime)
total_ram=$(free -h | awk '/Mem:/ { print $2} ')

# display username
echo "Generated by:   $user"

# display current date and time
echo "Generated on:   $date"

# display the number of CPU cores
echo "CPU cores:      $cores"

# display the current uptime of user
echo "Uptime:         $uptime"

# display the total RAM in GB
echo "Total RAM:      $total_ram"

echo -e
echo Drives Found
echo ------------

# display absolute path of hard drives with sd. use echo on /dev/sda to confirm
cd /dev/ ; ls /dev/sd* | grep -i sd | head -1

echo -e
echo Disk Usage
echo ----------

# displays the output of the disk files in human readable format
df -h

echo -e
echo Swap Areas
echo ----------
# display the swap details table by device
swapon

echo -e 
echo Mounted Filesystems
echo -------------------

# display the mounted filesystems. use grep to filter the filesystems from output mount
mount | grep -i /dev/mapper
mount | grep -i /dev/sda1

echo -e
echo Fun with Loops
echo --------------

# set variable for echo Blastoff
string=$(echo Blastoff!!!)

# create variable array, insert numbers 5 to 1 and add variable string in array
array=(5 4 3 2 1 $string)

# use for loop to output array
for u in "${array[@]}"
do
        echo $u
done
             
