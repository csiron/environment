#!/bin/bash
sudo apt-get update -y 
sudo apt-get install -y apache2 git

git clone https://github.com/csiron/Application.git

mv Application/images var/www/html/images
mv Application/page1.html var/www/html
mv Application/page2.html var/www/html

echo > "Hello" /var/hello.txt


