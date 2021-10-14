#! /usr/bin/python3
import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

ipaddr = '127.0.0.1'
port = 54321

s.connect((ipaddr, port))

# To send a string as a bytes like object add the prefix b to the string. \n is used to go to the next line (hit enter)
s.send(b'Hello\n')
response, conn = s.recvfrom(1024)

# In order to recieve a message that is sent as a bytes-like-object you must decode into utf-8
print(response.decode())
s.close()

