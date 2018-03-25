#!/bin/bash
chmod 777 INSTALL.sh
echo "1" > /proc/sys/net/ipv4/ip_forward
apt-get update
apt-get install python
apt-get install apache2
apt-get install python
apt-get install python-pip
apt-get install python-scapy
apt-get install pip 
mv d2t/ddos2track.sh ddos2track
mv d2t/tools tools
mv d2t/a.sh .
mv d2t/b.sh .
mv d2t/c.sh .
mv d2t/d.sh .
chmod 777 ddos2track
rm -R d2t
cp setup/CONFIGURE.sh CONFIGURE.sh 
cp setup/ANTIDDOS.sh ANTIDDOS.sh 
cp setup/_config.yml _config.yml
rm -R setup
chmod 777 CONFIGURE.sh
sh CONFIGURE.sh
rm INSTALL.sh
exit


