echo deb http://kambing.ui.ac.id/ubuntu/ trusty main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://kambing.ui.ac.id/ubuntu/ trusty-updates main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://kambing.ui.ac.id/ubuntu/ trusty-security main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://kambing.ui.ac.id/ubuntu/ trusty-backports main restricted universe multiverse >> /etc/apt/sources.list
echo deb http://kambing.ui.ac.id/ubuntu/ trusty-proposed main restricted universe multiverse >> /etc/apt/sources.list
apt-get update
apt-get install apache2 phpmyadmin mysql openssl ssl-cert wireshark
a2enmod ssl
service apache2 restart
mkdir /etc/apache2/ssl
openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt
cd /etc/apache2/site-available
echo SSLCertificateFile /etc/apache2/ssl/apache.crt >> default-ssl.conf
echo SSLCertificateKeyFile /etc/apache2/ssl/apache.key >> default-ssl.conf

