#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
sudo apt-get install -y php5-imagick

git clone https://github.com/csiron/Application.git

sudo mv ./Application/images /var/www/html/images
sudo mv ./Application/index.html /var/www/html
sudo mv ./Application/*.php /var/www/html

sudo curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

sudo chmod 600 /var/www/html/setup.php
