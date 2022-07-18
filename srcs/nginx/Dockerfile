FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl
EXPOSE 443

COPY ./conf/default /etc/nginx/sites-enabled/default
COPY ./script/start.sh /var/www

ENTRYPOINT [ "var/www/start.sh" ]
CMD [ "nginx", "-g", "daeom off;" ]