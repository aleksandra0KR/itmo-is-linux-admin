#!/bin/bash

chown -R u1:u2 /home/test13
chmod u=rw,g=rt,o= -R /home/test13
chmod ug+x /home/test13
