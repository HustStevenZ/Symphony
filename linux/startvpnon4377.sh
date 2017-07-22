#!/usr/bin/env bash
ps aux | grep ss-local | grep ssconfig | awk '{print $2}' | xargs kill -9
decodeqr.sh | xargs decodeqrurl.py >~/App/ssconfig.json
ss-local -c ~/App/ssconfig.json >/dev/null 2>&1 &
