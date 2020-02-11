#!/bin/bash

cat>/etc/yum.repos.d/mongodb-org-4.2.repo<<EOF
[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc
EOF

sudo yum install -y mongodb-org
sudo yum install -y mongodb-org-4.2.3 mongodb-org-server-4.2.3 mongodb-org-shell-4.2.3 mongodb-org-mongos-4.2.3 mongodb-org-tools-4.2.3

mv /tmp/mongod.service /lib/systemd/system/mongod.service
mv /tmp/mongod.conf /etc/mongod.conf

sudo systemctl daemon-reload
sudo systemctl enable mongod
sudo systemctl start mongod
