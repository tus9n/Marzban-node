#!/bin/bash
LOG=/var/log/xray/access.log
if [ "$1" = "run" ]; then
    sleep 1
    exec > >(exec tee -a "$LOG")
fi
exec /usr/local/bin/xray-real "$@"

