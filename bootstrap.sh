#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
sudo apt-get install -y python-pip

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/gamr-www /var/www
fi

sudo pip install flask
# cd /vagrant/gamr-api
