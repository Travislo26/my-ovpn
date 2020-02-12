#!/usr/bin/env bash

CLIENTNAME=${1:-test}
docker-compose run --rm vpn easyrsa build-client-full $CLIENTNAME nopass
docker-compose run --rm vpn ovpn_getclient $CLIENTNAME > clients/$CLIENTNAME.ovpn
