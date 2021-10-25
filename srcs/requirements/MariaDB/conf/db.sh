chown -R mysql:mysql /var/lib/mysql;
chmod 755 -R /var/lib/mysql
if [ ! -d /var/lib/mysql/wp ]; then
  mysql_install_db --user=mysql --ldata=/var/lib/mysql
  service mysql start;
  service mysql status;
  echo "create user 'hnewman'@'%' identified by 'raritet42';" | mysql -u root
  echo "create database if not exists wp;" | mysql -u root
  echo "grant all privileges on wp.* to 'hnewman'@'%' identified by 'raritet42';" | mysql -u root
  echo "flush privileges;" | mysql -u root
# mysqladmin -u root password raritet41
else
  mkdir -p /var/run/mysqld
  if [ ! -f /var/run/mysqld/mysqld.sock ]; then
    mkfifo /var/run/mysqld/mysqld.sock
  fi
  touch /var/run/mysqld/mysqld.pid
fi
  chown -R mysql /var/run/mysqld
exec "$@"
# service mysql stop;
# chown -R mysql /var/run/mysqld;
# mysqld;