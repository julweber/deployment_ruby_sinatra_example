#!/bin/bash

source "private_settings.sh"

# binds the service instance to the application as configured in private_settings.sh

cf bind-service "$APPNAME" "$SERVICE_INSTANCE_NAME"

echo "Restart application to update env:"
cf restart "$APPNAME"

echo "Application endpoint output:"
curl "$APPNAME.$DOMAIN"
