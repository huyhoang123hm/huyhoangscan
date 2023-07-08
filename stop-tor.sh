multitor -k
iptables -t nat -D OUTPUT -o lo -p tcp -m tcp -m multiport --dports 9000:10000 -j DNAT --to-destination 127.0.0.1