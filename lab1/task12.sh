#!/bin/bash

useradd u2 -p $(openssl passwd 87654321)

mkdir /home/test13 #13
cp work3.log /home/test13/work3-1.log
cp work3.log /home/test13/work3-2.log
