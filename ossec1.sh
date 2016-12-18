apt-get install postfix postfix-mysql postfix-doc mysql-client mysql-server courier-authdaemon courier-authlib-mysql courier-pop courier-pop-ssl courier-imap courier-imap-ssl libsasl2-2 libsasl2-modules libsasl2-modules-sql sasl2-bin libpam-mysql openssl phpmyadmin apache2 libapache2-mod-php5 php5 php5-mysql libpam-smbpass
apt-get install squirrelmail
echo home_mailbox = Maildir/ >> /etc/postfix/main.cf
maildirmake.courier /etc/skel/Maildir
dpkg-reconfigure postfix
echo Include /etc/squirrelmail/apache.conf >> /etc/apache2/apache2.conf
adduser tuxtux
adduser terkutux
service postfix restart
service courier-pop restart
service courier-imap restart
service apache2 restart
