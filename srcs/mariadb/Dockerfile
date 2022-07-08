FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./script /var/wwww/

RUN service mysql start && mysql < /var/www/initial_db.sql && rm -rf /var/www/initial_db.sql
CMD [ "mysqld" ]