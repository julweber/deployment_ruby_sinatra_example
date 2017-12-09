#!/bin/bash

source "private_settings.sh"

echo "Creating new route:"
cf create-route "$SPACE" "$DOMAIN" --hostname "$SUBDOMAIN"

echo "Listing routes for space $SPACE :"
cf routes
