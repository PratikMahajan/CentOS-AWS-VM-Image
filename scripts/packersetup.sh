#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

VER=1.4.4

if [  -n "$(uname -a | grep Ubuntu)" ]; then
  echo "Downloading Packer"
  wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
  unzip -d /usr/local/bin packer_${VER}_linux_amd64.zip
  rm packer_${VER}_linux_amd64.zip
else
  echo "Downloading Packer"
  curl -O https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
  echo "Downloading UNZIP utility"
  yum install -y unzip
  unzip -d /usr/local packer_${VER}_linux_amd64.zip
  mv /usr/sbin/packer /usr/sbin/packerlegacy
  ln -s /usr/local/packer /usr/local/bin/packer
  rm packer_${VER}_linux_amd64.zip
fi