service php7.3-fpm start
service php7.3-fpm status

wget https://raw.githubusercontent.com/wp-cli/builds//gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp;
#mkdir /var/www/html/wordpress/
#cd /var/www/html/
wp core download --allow-root
wp core install --allow-root \
	--url=$WORDPRESS_WEBSITE_URL_WITHOUT_HTTP \
	--title=$WORDPRESS_WEBSITE_TITLE \
	--admin_user=$WORDPRESS_ADMIN_USER \
	--admin_password=$WORDPRESS_ADMIN_PASSWORD \
	--admin_email=$WORDPRESS_ADMIN_EMAIL
wp user create --allow-root hnewman hnewman@42.fr --user_pass=z123456x

service php7.3-fpm stop