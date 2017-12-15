#!/bin/bash
source "private_settings.sh"

# Set provider'S CF Instance API endpoint
cf api $API

# login to CF API
cf login -u "$USERNAME" -p "$PASSWORD" -o "$ORGANIZATION" -s "$SPACE"
