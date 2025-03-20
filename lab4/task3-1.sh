#!/bin/bash

echo "
[Unit]
Description=Loggint service with data
After=networking.service
Requires=networking.service

[Service]
Type=oneshot
ExecStart=/bin/bash -c "/usr/bin/logger \"$(/usr/bin/date)\""
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/mymsg.service
