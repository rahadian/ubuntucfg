cd /etc/openvpn/easy-rsa/vars
source vars
./clean-all
./build-dh
./pkitool - -initca
./pkitool - -server server
./pkitool client2
useradd -m -s /bin/false tuxvpn
passwd tuxvpn
cp keys/server.key /etc/openvpn
cp keys/server.crt /etc/openvpn
cp keys/ca.crt /etc/openvpn
cp keys/dh2048.pem /etc/openvpn
cp keys/client2.key /etc/openvpn
cp keys/client2.key /home/tuxvpn
cp keys/client2.crt /home/tuxvpn
cp keys/ca.crt /home/tuxvpn

