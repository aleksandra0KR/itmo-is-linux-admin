#!/bin/bash
cat /etc/passwd | awk -F: '{printf("user %s has id %s\n",$1,$3)}' > work3.log
