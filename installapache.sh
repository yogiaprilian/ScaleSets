#install PHP
sudo apt update

sudo apt-get -y install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

sudo apt-get -y install php libapache2-mod-php


#install apache2
sudo apt update 

sudo apt-get -y install apache2

#move file apache2.conf, 000-default.conf

sudo mv /etc/apache2/apache2.conf /home/erudeye

sudo mv /etc/apache2/sites-available/000-default.conf /home/erudeye


#download apache.conf
sudo get https://raw.githubusercontent.com/yogiaprilian/ScaleSets-Test/master/apache2.conf -P /etc/apache2


#download 000-default.conf
wget https://raw.githubusercontent.com/yogiaprilian/ScaleSets-Test/master/000-default.conf -P /etc/apache2/sites-available/


sudo a2enmod rewrite


sudo apache2ctl configtest


echo "<?php phpinfo(); ?>" >> /home/erudeye/nfs/website/info.php


sudo systemctl restart apache2







