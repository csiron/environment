#!/bin/bash
sudo apt-get update -y 
sudo apt-get install -y apache2 git

git clone https://github.com/csiron/Application.git

mv sudo Application/images /var/www/html/images
mv sudo Application/page1.html /var/www/html
mv sudo Application/page2.html /var/www/html
cd /var/www/html
sudo rm index.html

echo > "Hello" /var/hello.txt


