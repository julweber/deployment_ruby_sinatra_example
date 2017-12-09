#!/bin/bash

source "private_settings.sh"

echo "Unbinds the service instance: $SERVICE_INSTANCE_NAME from the application: $APPNAME"

cf unbind-service "$APPNAME" "$SERVICE_INSTANCE_NAME"

echo "Restart application to update env:"
cf restart "$APPNAME"

echo "Application endpoint output:"
curl "$APPNAME.$DOMAIN"
