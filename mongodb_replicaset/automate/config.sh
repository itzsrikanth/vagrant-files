#!/bin/bash

if [[ $(hostname) = "master" ]]; then
    mongo<<EOF
rs.initiate()
rs.add('slave1')
rs.add('slave2')
rs.conf()
EOF;
else
    mongo<<EOF
rs.slaveOk()
rs.status()
EOF
fi

