#install PHP
sudo apt update

sudo apt-get -y install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

sudo apt-get -y install php libapache2-mod-php


#install apache2
sudo apt update 

sudo apt-get -y install apache2


#Edit directory root Apache2.conf
nano /etc/apache2/apache2.conf


#Edit directory root 000.default.conf
nano /etc/apache2/sites-available/000-default.conf


sudo a2enmod rewrite


sudo apache2ctl configtest


sudo systemctl restart apache2


echo "<?php phpinfo(); ?>" >> /home/erudeye/nfs/website/info.php




