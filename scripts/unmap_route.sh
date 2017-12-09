#!/bin/bash

source "private_settings.sh"

echo "Map $APPNAME to $SUBDOMAIN.$DOMAIN :"
cf map-route "$APPNAME" "$DOMAIN" --hostname "$SUBDOMAIN"
