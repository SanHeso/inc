sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"

mv /tmp/wp-config.php /var/www/html/wordpress;
mv /tmp/fpm.conf /etc/php/7.3/fpm/pool.d/www.conf;

chmod -R 775 /var/www/html/wordpress;
chown -R www-data:www-data /var/www/html/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds//gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp;
wp core install --allow-root \
	--url=$WORDPRESS_WEBSITE_URL_WITHOUT_HTTP \
	--title=$WORDPRESS_WEBSITE_TITLE \
	--admin_user=$WORDPRESS_ADMIN_USER \
	--admin_password=$WORDPRESS_ADMIN_PASSWORD \
	--admin_email=$WORDPRESS_ADMIN_EMAIL
wp user create --allow-root hnewman hnewman@42.fr --user_pass=z123456x

/usr/sbin/php-fpm7.3 --nodaemonize