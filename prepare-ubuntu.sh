#!/bin/bash -x
sudo sed -i 's/^deb/#deb/g' /etc/apt/sources.list
sudo tee /etc/apt/sources.list.d/local.list <<EOF
deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse
#deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse
#deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse
EOF

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y vim openssh-server