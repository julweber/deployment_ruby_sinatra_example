#!/bin/bash

source "private_settings.sh"

echo "Map $APPNAME to $SUBDOMAIN.$DOMAIN :"
cf unmap-route "$APPNAME" "$DOMAIN" --hostname "$SUBDOMAIN"
