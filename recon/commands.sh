#!/bin/bash
sudo nmap -sS 172.16.32.2

sudo hping3 172.16.32.2 -S -V -p 443

sudo nmap -sT -sV 10.16.32.23

#null scan

sudo nmap -sN 10.50.1.1

hping -c 1 -V -p 80 -s 5050 -Y 10.50.1.1

# fin scan
sudo nmap -sF 20.50.15.100
hping3 -c 1 -V -p 80 -s 5050 -F 25.50.75.110

sudo namp -sX IP

hping3 -c 1 -V -p 80 -s 5050 -M 0 -upf address


sudo nmap -sU -v ip_address

# idle scan
nmap -sI ip_add1 ip_add2

#window Scan
nmap -sW ip_addr

#RPC_ scan
nmap -sR ip_addr

#FTP Bounce attack
nmap -b ip_add1 ip_add2

#decoy scan 
nmap -D ip1, ip2, ip3, ME

#OS fingerprinting

nmap -O ip1


#version scan 
nmap -sV ip

#MAimon scan
nmap -sM ip1

nmap -PO ip1

#ICMP discovery probe
 nmap -PE ip1

 #Timestamp 
 nmap -Pp

 #netmask request

 nmap -PM -Pn ip

 #TCP syn
 nmap -PS21-50 ip 

 #TCP ack
 nmap -PA21-50
 hping3 -c 1 -V -p 80 -s 5050 -A ip

 #UDP
 nmap -PU21-50 ip

 #SCTCP
 nmap -sY




