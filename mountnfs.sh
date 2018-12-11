#install nfs client
sudo apt update 

sudo apt-get -y nfs-common

#buat folder mount
sudo mkdir -p /home/erudeye/nfs/website

#beri hak akses
sudo chmod 777 /home/erudeye/nfs/website

#mount folder
sudo mount 10.2.0.4:/home/erudeye/nfs/website /home/erudeye/nfs/website







