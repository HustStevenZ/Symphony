#!/usr/bin/env bash
ps aux | grep ss-local | grep ssconfig | awk '{print $2}' | xargs kill -9
~/App/ssproxyarukas.py >~/App/ssconfig.json
ss-local -c ~/App/ssconfig.json >/dev/null 2>&1 &
