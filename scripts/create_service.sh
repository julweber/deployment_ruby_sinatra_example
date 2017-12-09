#!/bin/bash

source "private_settings.sh"

echo "Listing all available service plans for the configured service:"
cf marketplace -s "$SERVICE_NAME"

echo "Creating service $SERVICE_NAME with plan $SERVICE_PLAN_NAME and instance name: $SERVICE_INSTANCE_NAME within the current space:"
cf create-service "$SERVICE_NAME" "$SERVICE_PLAN_NAME" "$SERVICE_INSTANCE_NAME"

echo "Show info for all services within the current space:"
cf services

echo "Show info for created service:"

cf service "$SERVICE_INSTANCE_NAME"
