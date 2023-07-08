multitor --init 150 --user debian-tor --socks-port 9000 --control-port 9900 --proxy polipo
python3 port.py > socks4.txt
iptables -t nat -I OUTPUT -o lo -p tcp -m tcp -m multiport --dports 9000:9500 -j DNAT --to-destination 127.0.0.1