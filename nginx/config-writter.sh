#!/bin/sh

envsubst '$DOMAIN' < /config-writter/sample.host.conf > /etc/nginx/conf.d/default.conf
exec "$@"