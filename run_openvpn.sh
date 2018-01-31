#!/bin/bash


docker run \
  -d \
  --name=openvpn \
  --restart=always \
  --cap-add=NET_ADMIN \
  -p 1194:1194 \
  -v $(pwd)/openvpn:/etc/openvpn \
  kylemanna/openvpn

