#!/bin/bash

CLIENT_NAME=macbook

docker run \
  --rm \
  -it \
  -v $(pwd)/openvpn:/etc/openvpn \
  kylemanna/openvpn \
  ovpn_getclient $CLIENT_NAME > $CLIENT_NAME.ovpn
