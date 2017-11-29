#!/bin/bash
#wget -q  http://freess.cx/images/servers/us01.png  -O us01.png
#wget -q  http://freess.cx/images/servers/us02.png  -O us01.png
#wget -q  http://freess.cx/images/servers/us03.png  -O us01.png
wget -q  http://freess.cx/images/servers/jp01.png  -O us01.png
#wget -q  http://freess.cx/images/servers/jp02.png  -O us01.png
#wget -q  http://freess.cx/images/servers/jp03.png  -O us01.png
#http://ss.ishadowx.com/img/qr/usa.png

#wget -q  http://ss.ishadowx.com/img/qr/usa.png  -O us01.png
#wget -q  http://ss.ishadowx.com/img/qr/usb.png  -O us01.png
#wget -q  http://ss.ishadowx.com/img/qr/usc.png  -O us01.png
#wget -q  http://ss.ishadowx.com/img/qr/jpa.png  -O us01.png
#wget -q  http://ss.ishadowx.com/img/qr/jpb.png  -O us01.png
#wget -q  http://ss.ishadowx.com/img/qr/jpc.png  -O us01.png
#wget -q  http://get.shadowsocks8.cc/images/server01.png  -O us01.png
zbarimg -q us01.png  | sed 's/QR-Code:ss:\/\///' | base64 --decode
