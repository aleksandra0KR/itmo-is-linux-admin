#!/bin/bash

useradd u1 -p $(openssl passwd u1) #5

groupadd g1 #6

usermod -aG g1 u1 #7 

id u1 >> work3.log #8

usermod -aG g1 myuser #9

cat /etc/group | grep "^g1:*" | awk -F: '{print $4}' >> work3.log #10

usermod -s /usr/bin/mc u1 #11 
