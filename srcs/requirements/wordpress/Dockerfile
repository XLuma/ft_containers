FROM debian:buster

RUN apt-get update
RUN apt-get install -y php7.3 php-mysqli php-fpm wget sendmail

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./script /var/www/

RUN chmod +x /var/www/wp_start.sh

ENTRYPOINT [ "/var/www/wp_start.sh" ]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
