# Networking

http://networking-ctfd-1.server.vta:8000/

https://git.cybbh.space/net/public/-/blob/master/modules/networking/activities/1-Fundamentals/BPF_Syntax_Examples/bpf-syntax.adoc

https://miro.com/app/board/o9J_klSqCSY=/ 

ssh student@10.50.41.139 -X

## Day 1

Teardrop attack. Altering the Offset of a fragmented packet, where the attacker can replace 

```python
a=Ether()
b=ARP()
c=ARP()
a.type= 0x0806

sendp(a/b, iface="eth0"); sendp(a/c, iface="eth0")
```
## Sockets
echo "I am the captain of deese sheep" | nc -l -p 54321 -u
```python

import socket
s = socket.socket(family, type, protocol)

```

family constants should be: AF_INET (default), AF_INET6, AF_UNIX

SOCK_STREAM (default), SOCK_DGRAM, SOCK_RAW

proto constants should be: 0 (default), IPPROTO_RAW


#### Types
user-space:
* stream- TCP
* datagram-UDP
kernel-space:
* raw- handcrafted packets 

#### Scripts
``` python
    
```

#### Recon
1. Host discovery
2. Port discovery
3. port validation / banner grabbing
    * 22/23 - connect to
    * 21/80 wget / curl
##### PAssive recon
* ip a 
* netstat
* hostname
* who
