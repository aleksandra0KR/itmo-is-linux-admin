#!/bin/bash

echo "
[Unit]
Description=Automount for mydata

[Automount]
Where=/mnt/mydata
TimeoutIdleSec=300

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/mnt-mydata.automount
