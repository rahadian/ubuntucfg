apt-get install openvpn easy-rsa
apt-get install ssh
gunzip -c /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz > /etc/openvpn/server.conf
cp -r /usr/share/easy-rsa/ /etc/openvpn
mkdir /etc/openvpn/easy-rsa/keys
nano /etc/openvpn/easy-rsa/vars
