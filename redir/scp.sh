#!/bin/bash
scp student@ip:file.txt /home/localdir

#from remote to remote
scp -3 student@172.16.82.106:/home/student/secretstuff.txt student@172.16.82.112:/home/student
#Download a file from a remote directory to a local directory
scp -P 1111 student@172.16.82.106:secretstuff.txt /home/student
#Upload a file to a remote directory from a local directory
scp -P 1111 secretstuff.txt student@172.16.82.106:/home/student
#SCP SYNTAX THROUGH A TUNNEL
ssh student@172.16.82.106 -L 1111:localhost:22 -NT
#Download a file from a remote directory to a local directory
scp -P 1111 student@localhost:secretstuff.txt /home/student
#Upload a file to a remote directory from a local directory

scp -P 1111 secretstuff.txt student@localhost:/home/student

mknod pipe p

nc -l 3333 0< pipe | nc -l 2222 1>pipe

#from remote destination
nc yourIP -nv 2222

#Port Forwarding

ssh User@ip -p 25

#Dynamic port forwarding

ssh user@ip -p 25 -D 9050



