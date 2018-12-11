#install nfs client
sudo apt update 

sudo apt-get -y install nfs-common

#create folder 
sudo mkdir -p /home/erudeye/nfs/website

#give full access
sudo chmod 777 /home/erudeye/nfs/website

#mount folder
sudo mount 10.2.0.4:/home/erudeye/nfs/website /home/erudeye/nfs/website

#fstab

sudo mv /etc/fstab /home/erudeye

sudo wget https://raw.githubusercontent.com/yogiaprilian/NFS-Ubuntu/master/fstab -P /etc/


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
sudo wget https://raw.githubusercontent.com/yogiaprilian/ScaleSets-Test/master/apache2.conf -P /etc/apache2


#download 000-default.conf
sudo wget https://raw.githubusercontent.com/yogiaprilian/ScaleSets-Test/master/000-default.conf -P /etc/apache2/sites-available


sudo systemctl restart apache2







