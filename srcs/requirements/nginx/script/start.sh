#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "nginx: ssl setting up";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=CA/ST=Quebec/L=Quebec/O=wordpress/CN=llaplant.42.fr";
echo "nginx: setup done";
fi

exec "$@"