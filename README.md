# Networking

http://networking-ctfd-1.server.vta:8000/

https://git.cybbh.space/net/public/-/blob/master/modules/networking/activities/1-Fundamentals/BPF_Syntax_Examples/bpf-syntax.adoc
https://miro.com/app/board/o9J_klSqCSY=/ 

ssh student@10.50.39.80 -X

## Day 1

Teardrop attack. Altering the Offset of a fragmented packet, where the attacker can replace 

```python
a=Ether()
b=ARP()
c=ARP()
a.type= 0x0806

sendp(a/b, iface="eth0"); sendp(a/c, iface="eth0")
```
