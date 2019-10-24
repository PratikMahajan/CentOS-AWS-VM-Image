#!/bin/bash


sudo yum update

sudo yum install ruby

sudo yum install wget

wget -P /home/centos/ https://${BUCKET_NAME}.s3.${REGION_IDENTIFIER}.amazonaws.com/latest/install

chmod +x /home/centos/install

sudo ./home/centos/install auto

sudo service codedeploy-agent start

sudo service codedeploy-agent status