#!/bin/bash

while true; do
    ifconfig eth0 down
    macchanger -r eth0
    ifconfig eth0 up
    sleep 1
done

