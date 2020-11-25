#!/bin/bash

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $1 ", " $5 }'|while read y

do
  var=$(echo $y | awk '{ print $2}' | cut -d '%' -f1 )
  if [ $var -lt $1 ]
  then
  echo -e "\e[0;34mOK,$y\e[0m"
  elif [ $var -le $2 ]
  then
  echo -e "\e[0;33mWARNING,$y\e[0m"
  else
  echo -e "\e[0;31mCRITICAL,$y\e[0m"
  fi
done

