#!/bin/bash


sudo yum update -y

sudo yum install ruby -y

sudo yum install wget -y

wget -P /home/centos/ https://aws-codedeploy-${REGION_IDENTIFIER}.s3.amazonaws.com/latest/install

echo "------ modifying executable permission for install ------"
chmod +x /home/centos/install

sudo /home/centos/./install auto

sudo service codedeploy-agent start

sudo service codedeploy-agent status