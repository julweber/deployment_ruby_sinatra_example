#!/bin/bash

source "private_settings.sh"

echo "Listing available service offerings:"
cf marketplace
