#!/bin/bash

useradd u1 -p $(openssl passwd u1) #5

groupadd g1 #6

usermod -aG g1 u1 #7 

id u1 >> work3.log
