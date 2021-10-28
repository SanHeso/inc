  service mysql start;
  service mysql status;

  mysql -u root -e "create user 'hnewman'@'%' identified by 'raritet42';"
  mysql -u root -e "create database if not exists wp;"
  mysql -u root -e "grant all privileges on wp.* to 'hnewman'@'%' identified by 'raritet42';"
  mysql -u root -e "flush privileges;"

  service mysql stop;