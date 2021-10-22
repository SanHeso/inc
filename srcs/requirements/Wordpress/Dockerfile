FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt install -y php7.3 php7.3-mysql php7.3-fpm wget vim

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN mkdir /var/www/ /var/www/html
RUN tar -xvf /tmp/wordpress.tar.gz -C /var/www/
#изменить
RUN mv /var/www/wordpress/ /var/www/html

EXPOSE 9000

COPY ./conf/wp.sh /var/www/
COPY ./conf/wp-config.php /var/www/html/wordpress/
# RUN chmod +x /var/www/wp.sh
RUN bash var/www/wp.sh
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
