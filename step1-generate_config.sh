#!/bin/bash

SERVER_QUALIFIED_NAME='floriankempenich.com'

docker run \
  --rm \
  -it \
  -v $(pwd)/openvpn:/etc/openvpn \
  kylemanna/openvpn \
  ovpn_genconfig \
  -u udp://$SERVER_QUALIFIED_NAME:1194
