#!/bin/bash

line1=$(sed -n '1p' /etc/resolv.conf)
line2=$(sed -n '2p' /etc/resolv.conf)


[[ "$line1" != \#* ]] && line1="# $line1"
[[ "$line2" != \#* ]] && line2="# $line2"

cat <<EOF > /etc/resolv.conf
$line1
$line2
nameserver 1.1.1.1
nameserver 1.0.0.1
EOF

