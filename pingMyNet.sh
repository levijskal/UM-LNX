#!/bin/bash

#Clear the file at the beginning of the script
echo " " > liveHosts

#Assign the Network Id to a variable
nid=$(hostname -I)

#Remove the numbers after the last .
nid0="${nid%.*}"

for i in {1..254};
        do
                echo "[+] pinging $nid0.$i";
                ping -c 1 $nid0.$i | grep "bytes from" >> liveHosts;
done
