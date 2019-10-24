#!/bin/bash


sudo yum update

sudo yum install ruby

sudo yum install wget

cd /home/centos

wget https://${BUCKET_NAME}.s3.${REGION_IDENTIFIER}.amazonaws.com/latest/install

chmod +x ./install

sudo ./install auto

sudo service codedeploy-agent start

sudo service codedeploy-agent status