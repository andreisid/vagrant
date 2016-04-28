#!/usr/bin/env bash

yum install -y httpd net-tools
if ! [ -L /var/www ]; then
      rm -rf /var/www
        ln -fs /vagrant /var/www
    fi
mkdir -p /var/www/html
systemctl start httpd
systemctl enable httpd
