#!/bin/bash
#avaiable proxies 
#   http://freess.cx/images/servers/us01-03.png
#   http://freess.cx/images/servers/jp01-03.png
#   http://ss.ishadowx.com/img/qr/jpa.png
#   http://ss.ishadowx.com/img/qr/usa.png
#   
wget -q  http://freess.org/images/servers/us01.png  -O us01.png
zbarimg -q us01.png  | sed 's/QR-Code:ss:\/\///' | base64 --decode
