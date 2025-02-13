#!/bin/bash

cat /etc/group | awk -F: '{print $1}' >> work3.log
