#Build socket
import socket

#system level commands
import sys

# establish packet structure
from struct import *

#create raw socket

try:
    s=socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_RAW)
except socket.err as msg:
    print(msg)
    sys.exit()

packet = ''

src_ip="10.1.0.2"
dst_ip="10.3.0.2"

# add IPv4 head info

ip_ver_ihl = 69 # Putting decimal conversion of 0x45 for version and header length
ip_tos = 0      # This is combines DSCP and ECN fields
ip_len = 0      # Kernel will fill in actual lerngth of packet
ip_id = 12345
ip_frag = 0
ip_ttl = 64
ip_proto = 16   # sets ip protocol to 16(chaos) if 6 or 17 additional headers needed
ip_check = 0    # kernel will fill in checksum
ip_srcadd = socket.inet_aton(src_ip)   
ip_dstadd = socket.inet_aton(dst_ip)    # inet_aton(string) will convert IP to 32 bit binary number

ip_header = pack('!BBHHHBBH4s4s', ip_ver_ihl, ip_tos, ip_len, ip_id, ip_frag, ip_ttl, ip_proto, ip_check, ip_srcadd, ip_dstadd)
# B = 1 byte
# H = half-word
# 4s = 4 bytes(sonverted from string to binary)

message = b'Message'
packet = ip_header + message
#sendto([bytes, [address()
s.sendto(packet, (dst_ip, 0))

