#!/bin/bash
sudo apt-get update -y 
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
sudo curl -sS http://getcomposer.org/installer
sudo php composer.phar require aws/aws-sdk-php

git clone https://github.com/csiron/Application.git

sudo mv Application/images /var/www/html/images
sudo mv Application/page1.html /var/www/html
sudo mv Application/page2.html /var/www/html
sudo mv Application/dbcreate.php /var/www/html
sudo mv Application/setup.php /var/www/html
sudo mv Application/gallery.php /var/www/html
sudo mv Application/index.php /var/www/html
sudo mv Application/submit.php /var/www/html
chmod 755 Application/vendor
sudo mv Application/vendor /var/www/html/vendor
cd /var/www/html
sudo php -r setup.php
chmod 600 setup.php
sudo rm index.html

echo > "Hello" /var/hello.txt


