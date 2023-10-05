#!/bin/sh

set -e

RHDG_NAMESPACE=demo
RHDG_APP_NAME=rhdg-client

APP_URL=$(oc get routes $RHDG_APP_NAME -n $RHDG_NAMESPACE --template="https://{{ .spec.host }}")

echo "Client URL: $APP_URL"

curl -k -X GET "${APP_URL}/api/query/load"
