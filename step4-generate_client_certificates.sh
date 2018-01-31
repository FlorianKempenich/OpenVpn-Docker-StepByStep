#!/bin/bash

CLIENT_NAME=macbook

docker run \
  --rm \
  -it \
  -v $(pwd)/openvpn:/etc/openvpn \
  kylemanna/openvpn \
  easyrsa build-client-full $CLIENT_NAME nopass

