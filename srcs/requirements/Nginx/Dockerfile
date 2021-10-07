FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx vim openssl
RUN openssl req -days 365 -nodes -x509 -subj -newkey rsa:4096 "/C=RU/ST=Russia/L=Kazan/O=21Kazan/OU=Tagir/CN=localhost" -keyout /etc/ssl/nginx-cert.key -out /etc/ssl/nginx-bundle.crt
EXPOSE 443
COPY ./conf/ /var/www/
RUN chmod +x /var/www/nginx.sh
CMD ["var/www/nginx.sh"]