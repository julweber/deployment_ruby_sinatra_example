#!/bin/bash

source "private_settings.sh"

echo "Deleting app $APPNAME"

cf delete -f "$APPNAME"
