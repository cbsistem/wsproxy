#!/bin/bash

cd $(dirname $0)
docker create --name=wsproxy -p 80:80 -p 443:443 \
              -v $(pwd):/data wsproxy
docker start wsproxy

