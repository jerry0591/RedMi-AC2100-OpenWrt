#!/bin/sh
PATH="/bin:/sbin:/usr/sbin:/usr/bin"
sh /etc/123.sh
#IP=`cat /etc/config/network | grep l2tp -A 2 | grep server | awk '{print $3}' | sed $'s/\'//g'`
gateway=`route | grep "eth0.2" | grep "default" | awk -F" " '{print $2}'`
route add -net  103.198.203.0 netmask 255.255.255.0 gw $gateway
route add -net  122.9.54.0 netmask 255.255.255.0 gw $gateway
route add -net  120.233.70.0 netmask 255.255.255.0 gw $gateway
route add -net  119.29.29.29 netmask 255.255.255.255 gw $gateway
