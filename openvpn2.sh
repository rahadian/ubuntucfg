useradd -m -s /bin/false tuxvpn
passwd tuxvpn
cp /etc/openvpn/easy-rsa/keys/server.key /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/server.crt /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/ca.crt /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/dh1024.pem /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/client2.key /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/client2.key /home/tuxvpn
cp /etc/openvpn/easy-rsa/keys/client2.crt /home/tuxvpn
cp /etc/openvpn/easy-rsa/keys/ca.crt /home/tuxvpn
