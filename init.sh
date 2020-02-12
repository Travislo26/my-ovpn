#!/usr/bin/env bash

HERE=$(pwd)

docker run -v $HERE/openvpn-data:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://vpn.vdsense.com
docker run -v $HERE/openvpn-data:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki
