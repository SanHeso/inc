FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/db.sh /var/www/
ENTRYPOINT ["bash", "var/www/db.sh"]
CMD mysqld