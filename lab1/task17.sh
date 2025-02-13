#!/bin/bash

mkdir /home/test15
touch /home/test15/secret_file
echo "123" > /home/test15/secret_file
chmod a=wx /home/test15
