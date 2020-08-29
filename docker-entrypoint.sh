#!/usr/bin/env bash

export IFACE=${IFACE:-eth0}
export NETWORK=${NETWORK:-kubenet}
export PORT=${PORT:-9091}
export AUTH_TOKEN=$(cat /run/secrets/kubernetes.io/serviceaccount/token)
export AUTH_CA=/run/secrets/kubernetes.io/serviceaccount/ca.crt

exec nc -lkp ${PORT} -e bashttpd
