#!/bin/bash

chown -R www-data:www-data	/var/www/*
chmod -R 744				/var/www/*

mv /var/www/nginx.conf /etc/nginx/sites-available/default;

nginx -g 'daemon off;';