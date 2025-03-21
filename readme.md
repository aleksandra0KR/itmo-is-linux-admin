# 1. Разница между systemctl restart и systemctl try-restart

- systemctl restart <service>	Перезапускает сервис, независимо от его текущего состояния (даже если он не работал).
- systemctl try-restart <service>	Перезапускает сервис только если он уже был запущен. Если сервис не работал — ничего не делает.

# 2. Запуск Linux в однопользовательском режиме с systemctl

``` systemctl rescue ```


# 3. Создание сервиса mysrv, который запускается только при остановке mymsg

- /etc/systemd/system/mymsg.service
```
[Unit]
Description=Logging service with data
After=networking.service
Requires=networking.service
StopWhenUnneeded=yes 

[Service]
Type=oneshot
ExecStart=/bin/bash -c "/usr/bin/logger \"$(/usr/bin/date)\""
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

- /etc/systemd/system/mysrv.service
```
[Unit]
Description=Custom service that runs only if mymsg is stopped
After=mymsg.service
Requires=mymsg.service
StartLimitAction=none
ConditionPathExists=!/var/run/mymsg.lock

[Service]
Type=oneshot
ExecStart=/bin/echo "mysrv started because mymsg stopped"

[Install]
WantedBy=multi-user.target
```

