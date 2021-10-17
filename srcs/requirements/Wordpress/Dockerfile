FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php7.3-cli php7.3-xml wget vim

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN mkdir /var/www/ /var/www/html
RUN tar -xvf /tmp/wordpress.tar.gz -C /var/www/html

EXPOSE 9000

COPY ./conf/ /var/www/
RUN chmod +x /var/www/wp.sh
CMD ["var/www/wp.sh"]