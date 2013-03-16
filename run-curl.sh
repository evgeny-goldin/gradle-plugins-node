#!/bin/bash

set -e
set -x

echo hello-js:
curl http://127.0.0.1:3051

echo hello-js-configs-new-keys:
curl http://127.0.0.1:3025

echo nirc:
curl http://127.0.0.1:3048

echo hello-js-configs-update-keys:
curl http://127.0.0.1:3018

echo hello-coffee-port-number:
curl http://127.0.0.1:3086

echo hello-js-port-number:
curl http://127.0.0.1:3033

echo nodejs-blackboard:
curl http://127.0.0.1:3095

echo nodejs-blackboard Mongo-1:
curl http://127.0.0.1:27017

echo nodejs-blackboard Mongo-2:
curl http://127.0.0.1:28017

echo uptime:
curl http://127.0.0.1:3036

echo uptime Mongo-1:
curl http://127.0.0.1:27018

echo uptime Mongo-2:
curl http://127.0.0.1:28018

echo We are good
exit 0
