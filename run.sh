#!/bin/bash

cd "${0%/*}" || exit 0

SERVERS_LIST="pia-european-servers.txt"
RANDOM_SERVER="$(cat $SERVERS_LIST | gshuf -n 1)"

OPENVPN_CONFIG="$RANDOM_SERVER" docker-compose down \
  && OPENVPN_CONFIG="$RANDOM_SERVER" docker-compose up -d
