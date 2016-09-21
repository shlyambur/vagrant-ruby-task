#!/bin/bash

#set -x
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" > /etc/apt/sources.list

sudo apt-get update
sudo apt-get install virtualbox-5.1

wget https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_x86_64.deb

#set +x
