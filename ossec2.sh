apt-get install build-essential make libssl-dev git
apt-get install mysql-server libmysqlclient-dev mysql-client apache2 php5 libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
wget http://tux101010.vv.si/ossec-hids-2.8.3.tar.gz
wget http://tux101010.vv.si/ossec-wui-0.9.tar.gz
tar xzf ossec-hids-2.8.3.tar.gz
tar xzf ossec-wui-0.9.tar.gz
cd ossec-hids-2.8.3
cd src
make setdb
cd ..
./install.sh
var/ossec/bin/ossec-control restart

