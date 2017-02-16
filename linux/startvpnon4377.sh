#!/usr/bin/env bash
decodeqr.sh | xargs decodeqrurl.py >~/App/ssconfig.json
sslocal -c ~/App/ssconfig.json >/dev/null 2>&1 &
