#!/bin/bash
wget -q  http://freess.org/images/servers/us01.png  -O us01.png
zbarimg -q us01.png  | sed 's/QR-Code:ss:\/\///' | base64 --decode
