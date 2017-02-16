#!/usr/bin/python
import sys
import json
import re
if __name__=='__main__':
     url = sys.argv[1]
     encryp,pw,host,port = re.split('[:@]',url)
     cfg = {
             "server": host,
             "server_port": int(port),
             "local_address": "127.0.0.1",
             "local_port": 4377,
             "password": pw,
             "method": encryp
            } 
     print json.dumps(cfg)
