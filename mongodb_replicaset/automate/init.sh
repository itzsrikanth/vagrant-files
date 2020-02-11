#!/bin/bash

cat>/etc/environment<<-EOF
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
EOF

echo "LANG=en_US.UTF-8" > /etc/locale.conf

yum update -y

# Adding other devices in network, expect current device
cat >> /etc/hosts <<< "$(grep -v hostname /tmp/hosts)"