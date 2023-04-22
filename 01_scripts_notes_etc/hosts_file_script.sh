#!/bin/bash

if [ $# -eq 0 ] || [ $# -gt 3 ] ; then 
 echo "please pass arguments properly"
 echo "ex: sh $0 <ip1> <ip2> <ip3>"
 exit 0
fi

if [ $# -eq 3 ]; then
 echo "[web]" > hosts_file
 echo $1 >> hosts_file
 echo " " >> hosts_file
 
 echo "[app]" >> hosts_file
 echo $2 >> hosts_file
 echo " " >> hosts_file
 
 echo "[db]" >> hosts_file
 echo $3 >> hosts_file
 echo " " >> hosts_file

elif [ $# -eq 2 ]; then
 echo "[web]" > hosts_file
 echo $1 >> hosts_file
 echo " " >> hosts_file
 
 echo "[app]" >> hosts_file
 echo $2 >> hosts_file
 echo " " >> hosts_file
 
elif [ $# -eq 1 ]; then
 echo "[web]" > hosts_file
 echo $1 >> hosts_file
 echo " " >> hosts_file
fi 


# cat /tmp/utilities/keys/hosts_file >> /etc/ansible/hosts