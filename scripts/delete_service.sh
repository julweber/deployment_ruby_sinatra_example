#!/bin/bash

source "private_settings.sh"

echo "Deleting the service instance: $SERVICE_INSTANCE_NAME in space: $SPACE :"

cf delete-service "$SERVICE_INSTANCE_NAME"
