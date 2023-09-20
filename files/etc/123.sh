#!/bin/sh
PATH="/bin:/sbin:/usr/sbin:/usr/bin"
wireless=`cat /sys/class/net/eth0.2/address  | awk -F: '{print $1$2$3$4$5$6}'| tr '[a-z]''[A-Z]'`
sed -i "s/OpenWrt/$wireless/g" /etc/wireless/mt7615/mt7615.1.dat
sed -i "s/anyti/$wireless/g" /etc/config/frp
sed -i "s/openwrt.org/www.anytiktok.com/g"   /etc/config/luci
rm -rf /etc/banner
mv /etc/banner1 /etc/banner
#rm -rf  /usr/lib/lua/luci/controller/frp.lua
#rm -rf  /usr/lib/lua/luci/controller/admin/network.lua
#rm -rf  /usr/lib/lua/luci/controller/admin/system.lua
wifi down && wifi up
wifi down && wifi up
rm -rf /etc/123.sh


172.30.48.1/30	172.30.48.1

172.30.48.5/30	172.30.48.5
