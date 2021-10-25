service php7.3-fpm start
service php7.3-fpm status

if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p var/www/html/
	wget https://raw.githubusercontent.com/wp-cli/builds//gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html/
	wp core download --allow-root
	mv /var/www/wp-config.php /var/www/html/
	wp core install --allow-root \
		--url=$WORDPRESS_WEBSITE_URL_WITHOUT_HTTP \
		--title=$WORDPRESS_WEBSITE_TITLE \
		--admin_user=$WORDPRESS_ADMIN_USER \
		--admin_password=$WORDPRESS_ADMIN_PASSWORD \
		--admin_email=$WORDPRESS_ADMIN_EMAIL
	wp user create --allow-root hypnos hypnos@42.fr --user_pass=z123456x

	rm -rf /etc/php/7.3/fpm/pool.d/www.conf
fi
mv /var/www/www.conf /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 --nodaemonize