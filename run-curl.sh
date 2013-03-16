#!/bin/bash

set -e
set -x

echo hello-coffee-port-number:
curl http://127.0.0.1:3086 | head -3

echo hello-js:
curl http://127.0.0.1:3051 | head -3

echo hello-js-configs-new-keys:
curl http://127.0.0.1:3025 | head -3

echo hello-js-configs-update-keys:
curl http://127.0.0.1:3018 | head -3

echo hello-js-port-number:
curl http://127.0.0.1:3033 | head -3

echo nirc:
curl http://127.0.0.1:3048 | head -3

echo nodejs-blackboard:
curl http://127.0.0.1:3095 | head -3

echo nodejs-blackboard Mongo-1:
curl http://127.0.0.1:27017 | head -3

echo nodejs-blackboard Mongo-2:
curl http://127.0.0.1:28017 | head -3

echo redis:
curl http://127.0.0.1:3055 | head -3

echo uptime:
curl http://127.0.0.1:3036 | head -3

echo uptime Mongo-1:
curl http://127.0.0.1:27018 | head -3

echo uptime Mongo-2:
curl http://127.0.0.1:28018 | head -3

echo We are good!
exit 0
