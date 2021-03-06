#!/bin/bash

docker run \
  -d \
  --name=openvpn \
  --restart=always \
  --cap-add=NET_ADMIN \
  -v $(pwd)/openvpn:/etc/openvpn \
  -p 1194:1194/udp \
  kylemanna/openvpn
