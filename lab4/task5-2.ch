#!/bin/bash

echo "
[Unit]
Description=Mount sdb1 and mydata

[Mount]
What=/dev/sdb1
Where=/mnt/mydata
Type=ext4
Options=defaults

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/mnt-mydata.mount
