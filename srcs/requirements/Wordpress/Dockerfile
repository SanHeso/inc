FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt install -y php7.3 php7.3-mysql php7.3-fpm wget vim

# RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
# RUN mkdir /var/www/ /var/www/html
# RUN tar -xvf /tmp/wordpress.tar.gz -C /var/www/
#изменить
# RUN mv /var/www/wordpress/ /var/www/html

EXPOSE 9000

COPY ./conf/ /var/www/
COPY ./conf/www.conf /var/www/
# RUN chmod +x /var/www/wp.sh
CMD ["bash", "var/www/wp.sh"]
# CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
