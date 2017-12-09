#!/bin/bash
set -e
source "private_settings.sh"

environment="$1"
if [ -z "$environment" ]; then
    echo "No environment name given! Usage: blue_green_deployment.sh <env_name>"
    exit -1
fi

echo "Deploying environment: $environment to live domain: $SUBDOMAIN.$DOMAIN"
echo "Current space environment: "
echo "-----------------------------------"
cf apps
echo "-----------------------------------"

# blue is default
export APP_NAME_DEPLOY="$APPNAME"
export APP_NAME_OLD="$APPNAME2"
if [ "$environment" == "green" ]
then
  export APP_NAME_DEPLOY="$APPNAME2"
  export APP_NAME_OLD="$APPNAME"
fi

echo "-----------------------------------"
echo "Deployment plan:"
echo "Deploying and binding app: $APP_NAME_DEPLOY"
echo "Unbinding app: $APP_NAME_OLD"
echo "-----------------------------------"

echo "Deploying app $APP_NAME_DEPLOY ..."
cf push "$APP_NAME_DEPLOY" -f "$MANIFEST_BLUE_GREEN"
echo "Deployed app $APP_NAME_DEPLOY "

echo "Mapping live route $SUBDOMAIN.$DOMAIN to $APP_NAME_DEPLOY ..."
cf map-route "$APP_NAME_DEPLOY" "$DOMAIN" --hostname "$SUBDOMAIN"

echo "Unmapping live route from $APP_NAME_OLD ..."
cf unmap-route "$APP_NAME_OLD" "$DOMAIN" --hostname "$SUBDOMAIN"

echo "Stopping app $APP_NAME_OLD"
cf stop "$APP_NAME_OLD"

echo "App configuration for space $SPACE :"
cf apps
exit 0
