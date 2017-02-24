#!/bin/bash -eux

git clone https://github.com/databricks/reference-apps.git
cd /home/centos/reference-apps/logs_analyzer/app/java8
mvn package
