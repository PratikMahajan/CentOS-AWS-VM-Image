#!/bin/sh

echo "=======Installing Python3======="

sudo yum install python3 -y

echo "=======Installing Web App Dependencies========="

pip3 install -r /home/centos/requirements.txt --user
