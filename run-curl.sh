#!/bin/bash

set -e
set -x

echo hello-coffee-port-number:
curl -if http://127.0.0.1:3086

echo hello-js:
curl -if http://127.0.0.1:3051

echo hello-js-configs-new-keys:
curl -if http://127.0.0.1:3025

echo hello-js-configs-update-keys:
curl -if http://127.0.0.1:3018

echo hello-js-port-number:
curl -if http://127.0.0.1:3033

echo nirc:
curl -if http://127.0.0.1:3048

echo nodejs-blackboard:
curl -if http://127.0.0.1:3095

echo nodejs-blackboard Mongo-1:
curl -if http://127.0.0.1:27017

echo nodejs-blackboard Mongo-2:
curl -if http://127.0.0.1:28017

echo redis:
curl -if http://127.0.0.1:3055

echo uptime:
curl -if http://127.0.0.1:3036

echo uptime Mongo-1:
curl -if http://127.0.0.1:27018

echo uptime Mongo-2:
curl -if http://127.0.0.1:28018

echo We are good!
exit 0
