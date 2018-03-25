#!/bin/bash
echo ""
echo ""
echo -n "Do you want to use your [O]wn server to send the email notification or use [D]efault server [o/d]: "
read op
case $op in
o) echo "[*] OK... CONFIGURING ALL...";
echo -n "Type your PHP script URL (Eg.: http://server.com/send.php): "
read servs
echo "$servs" > tools/mailer/config/server.txt
echo -n "Your Email Address to warn if your website is attacked: "
read eaddr
echo $eaddr > tools/mailer/config/emailaddr.txt
echo "[*] Executing İSMAİL TAŞDELEN Anti-DDoS  Script IPTables Rules..."
chmod 777 ANTIDDOS.sh
sh ANTIDDOS.sh
echo "[+] DDOS2TRACK IS NOW CONFIGURED"
rm ANTIDDOS.sh
rm _config.yml
rm CONFIGURE.sh
exit
;;
d) echo "OK... CONFIGURING ALL...";
echo "http://ddos2track0.000webhostapp.com" > tools/mailer/config/server.txt
echo -n "Your Email Address to warn if your website is attacked: "
read eaddr
echo $eaddr > tools/mailer/config/emailaddr.txt
echo "[*] Executing İSMAİL TAŞDELEN Anti-DDoS  Script IPTables Rules..."
sh ANTIDDOS.sh
echo "[+] DDOS2TRACK IS NOW CONFIGURED"
chmod 777 ANTIDDOS.sh
rm ANTIDDOS.sh
rm _config.yml
rm CONFIGURE.sh
exit
;;
*) echo "[-] Sorry, $op is not an option";
echo "Press enter to continue..."
read foo;;
esac
