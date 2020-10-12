#!/bin/bash
echo " " > liveHosts
echo "Please provide like ex. 192.168.1"
read -ep "Please provide the network ID: " thisNetwork

for i in {1..254};
        do
                echo "[+] pinging $thisNetwor.$i";
                ping -c 1 $thisNetwork.$i | grep "bytes from" >> liveHosts;
done