#!/bin/bash

docker run \
  --rm \
  -it \
  -v $(pwd)/openvpn:/etc/openvpn \
  kylemanna/openvpn \
  ovpn_genconfig \
  -u udp://floriankempenich.com:1194
