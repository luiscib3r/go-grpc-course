#!/bin/sh

sed -i -e 's/$PORT/'"$PORT"'/g' /etc/envoy/envoy.yaml

/server &
envoy -c /etc/envoy/envoy.yaml