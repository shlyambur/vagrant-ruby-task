#!/bin/bash

set -x

echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" > /etc/apt/sources.list

sudo apt-get update
sudo apt-get install virtualbox-5.1

if [ "$(sudo getconf LONG_BIT)" = 32 ];
then
        curl "https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_i686.deb" -o "/tmp/vagrant_1.8.5_i686.deb"
        sudo dpkg -i /tmp/vagrant_1.8.5_i686.deb
else
        curl "https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_x86_64.deb" -o "/tmp/vagrant_1.8.5_x86_64.deb"
        sudo dpkg -i /tmp/vagrant_1.8.5_x86_64.deb"
fi

vagrant box add ubuntu/trusty64
mkdir ~/vagrant/vm/node01
cd ~/vagrant/vm/node01
vagrant init ubuntu/trusty64

set +x
