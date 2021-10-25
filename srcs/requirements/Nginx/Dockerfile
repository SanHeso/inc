FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx vim openssl
RUN openssl req -nodes -x509 -days 365 -newkey rsa:4096 \
-subj "/C=RU/ST=Russia/L=Kazan/O=21Kazan/OU=Tagir/CN=localhost" \
-keyout /etc/ssl/nginx-cert.key -out /etc/ssl/nginx-bundle.crt

EXPOSE 443
COPY ./conf/default /etc/nginx/sites-available/
COPY ./conf/ /var/www/
# RUN chmod +x /var/www/nginx.sh
CMD ["bash", "var/www/nginx.sh"]
# CMD ["nginx", "-g", "daemon off;"]