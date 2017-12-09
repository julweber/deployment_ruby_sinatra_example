#!/bin/bash
source "private_settings.sh"

# Set provider'S CF Instance API endpoint
cf api $API

# login to CF API
cf login -u "$USERNAME" -p "$PASSWORD"

# target the selected space
cf target -o $ORGANIZATION -s $SPACE $TARGET
