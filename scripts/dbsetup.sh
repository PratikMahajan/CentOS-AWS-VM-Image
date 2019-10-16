#!/bin/sh

if [  -n "$(uname -a | grep Ubuntu)" ]; then
    # OS is Ubuntu
    sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
    sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://ftp.utexas.edu/mariadb/repo/10.3/ubuntu bionic main'
    sudo apt update
    sudo apt install mariadb-server -y


else
    # Instructions for Centos/ Fedora/ RHEL
    echo "yum installation"
    DEST_DIR=/etc/yum.repos.d/MariaDB.repo
    REPO=$(cat <<-EOF
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.3/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF
)
    echo "$REPO" > MariaDB.repo
    sudo mv MariaDB.repo "$DEST_DIR"
#    sudo echo "$REPO" > "$DEST_DIR"

    sudo yum clean all
    sudo rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
    sudo yum install MariaDB-server -y


fi

sudo systemctl enable mariadb
sudo systemctl start mariadb

#sudo mysql_secure_installation
#systemctl status mariadb