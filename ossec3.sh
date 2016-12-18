mkdir -p /var/www/html/ossec/tmp/
mv ossec-wui-0.9/* /var/www/html/ossec/
chown www-data:www-data /var/www/html/ossec/tmp/
chmod 666 /var/www/html/ossec/tmp
usermod -a -G ossec www-data
