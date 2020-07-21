#!/bin/bash

echo "-----------------------------------------------------------------------------"
echo "                        Checking servers status                              "
echo "-----------------------------------------------------------------------------"

for Hosts in vm1 vm2
do
ssh root@$Hosts ping -c 2 8.8.8.8
if [ "$?" == "0" ]; then
    echo "===============================Server is ONLINE==========================="
else
     echo "==============================Server is DOWN============================="
fi
done
