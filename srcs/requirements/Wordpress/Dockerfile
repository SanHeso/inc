FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php7.3-cli php7.3-xml wget vim

ADD https://wordpress.org/latest.tar.gz /var/www/html
RUN cd /var/www && tar -xzvf latest.tar.gz

EXPOSE 9000

COPY ./conf/ /var/www/
RUN chmod +x /var/www/wp.sh
CMD ["var/www/wp.sh"]s