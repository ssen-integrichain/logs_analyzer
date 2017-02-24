#!/bin/bash -eux
sudo yum install -y wget java maven git
sudo wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
sudo tar -zxf spark-2.1.0-bin-hadoop2.7.tgz -C /opt
sudo chown -R 1000 /opt/spark-2.1.0-bin-hadoop2.7
