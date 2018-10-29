#!/bin/bash
echo -n "Firewall IP address : "
read fip
echo -n "Enter username : "
read user
echo -n "Enter password : "
read -s pass
echo ""
./runn $pass get system arp exit ssh $user@$fip > conf
ip=$(ip a | grep -oE "[0-9]+?\.[0-9]+?\.[0-9]+?\.[0-9]+?" | grep -v 169.254 | grep -v 127.0 | grep -v 255)
(cat conf | tail -n +5 | head -n -4 | cut -d' ' -f1) > conf2
mv conf interm
mv conf2 conf
nmap -iL conf -F > nmapres2
cat nmapres2 | grep -oE '([0-9]*/)|(^$)|([0-9]+?\.[0-9]+?\.[0-9]+?\.[0-9]+?)' | tr '/' ' ' | tr '\n' ' ' > nmapres
rm nmapres2
python3.6 hello.py > ip_port
rm nmapres

