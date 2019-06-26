#!/bin/bash

apk add openssh

rc-update add sshd
rc-status

sed "s/UseDNS.*/UseDNS no/g"
sed "s/PasswordAuthentication.*/PasswordAuthentication no/g"

/etc/init.d/sshd start
/palugada/palugada
