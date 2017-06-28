#!/bin/bash -eux

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt -y install software-properties-common
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee -a /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

# Install Ansible.
apt -y update
apt -y install ansible
