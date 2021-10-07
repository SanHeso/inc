FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/ /var/www/
RUN chmod +x /var/www/db.sh
CMD ["var/www/db.sh"]