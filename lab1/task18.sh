#!/bin/bash

echo "u1 ALL=(root) /usr/bin/passwd" > /etc/sudoers.d/u1
chmod u=r,g=r,o= /etc/sudoers.d/u1
