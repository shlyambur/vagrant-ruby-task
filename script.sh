#!/bin/bash
set -x

#GIT install
#sudo apt-get update
#sudo apt-get install -y git

# Checking if there are particular vagrant box and update it if it's needed
if [[ $"(vagrant box list | grep trusty64)" == *"trusty64"* ]]
then
	vagrant box update --box ubuntu/trusty64
else
        vagrant box add ubuntu/trusty64
fi

# Copy Vagrantfile and ansible files to vagrant share folder
##cp /files/Vagrantfile  ~/vagrant/node01/Vagrantfile
##cp /files/playbook.yml ~/vagrant/node01/playbook.yml
mkdir -p ~/vagrant/node01
cp files/* ~/vagrant/node01/

# Starting and conecting to VM
cd ~/vagrant/node01
vagrant up
set +x

vagrant ssh

#set +x
