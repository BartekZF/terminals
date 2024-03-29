#!/bin/bash

while true
do
      # welcome current user
      curruser=$(whoami | sed -e "s/\b\(.\)/\u\1/g")
      # get current date
      currdate=$(date '+%a %d-%m-%y %T')
      # get all the infos first to avoid high resources usage
      free_output=$(free -h | grep Mem)
      df_output=$(df -h $df_check_location | tail -n 1)
      # Used and total memory
      MEMUSED=$(echo $free_output | awk '{print $3}')
      MEMTOT=$(echo $free_output | awk '{print $2}')
		

      xsetroot -name " Welcome $curruser |  $MEMUSED/$MEMTOT |  $currdate "
      sleep 1
done
