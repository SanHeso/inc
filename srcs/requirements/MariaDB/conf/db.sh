#!/bin/bash

sed -i "s/\#port    /port    /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/bind-addres/#bind-address/" "/etc/mysql/mariadb.conf.d/50-server.cnf"

chown -R mysql:mysql /var/lib/mysql;

service mysql start;

echo "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';";
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" | mariadb;
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;";
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mariadb;
echo "GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'%';";
echo "GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'%';" | mariadb;
echo "update mysql.user set plugin='mysql_native_password' where user='${DB_USER}';";
echo "update mysql.user set plugin='mysql_native_password' where user='${DB_USER}';" | mariadb;
echo "FLUSH PRIVILEGES;";
echo "FLUSH PRIVILEGES;" | mariadb;

service mysql stop;
chown -R mysql /var/run/mysqld;
mysqld;