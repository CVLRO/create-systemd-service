# /usr/bin/env bash

name=$1
command=$2

description=$3

cat <<SERVICE > "/lib/systemd/system/$name.service"
[Unit]
Description=$3
After=syslog.target

[Service]
Type=simple
ExecStart=$command
Restart=on-failure

[Install]
WantedBy=multi-user.target
SERVICE
