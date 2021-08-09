#!/bin/sh

/server &
envoy -c /etc/envoy/envoy.yaml