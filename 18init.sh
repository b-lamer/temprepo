#!/bin/sh

systemctl stop sshd
systemctl disable sshd
systemctl mask sshd

chown -R www-data:www-data /var/www/html
chmod -R 750 /var/www/html

a2dismod -f autoindex status
systemctl restart apache2
systemctl restart httpd





#Scripts
mkdir -p Scripts
cd Scripts
wget https://raw.githubusercontent.com/uwwisaca/temprepo/refs/heads/main/Scripts/iptables.sh

