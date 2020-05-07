#!/bin/sh
echo "35.229.165.248 mb3admin.com www.mb3admin.com" >> /etc/hosts
curl https://raw.githubusercontent.com/s1oz/embyonekey/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
cd /var/packages/EmbyServer/target/mono/bin
./cert-sync /etc/ssl/certs/ca-certificates.crt
#cd /usr/local/etc/nginx/conf.d/*-*-*-*
#wget https://raw.githubusercontent.com/s1oz/embyonekey/master/user.conf
#nginx -s reload