#!/bin/bash

set -e
set -x

echo hello-js:
curl http://127.0.0.1:3000

echo hello-js-configs-new-keys:
curl http://127.0.0.1:3022

echo nirc:
curl http://127.0.0.1:3048

echo hello-js-configs-update-keys:
curl http://127.0.0.1:3077

echo hello-coffee-port-number:
curl http://127.0.0.1:3081

echo hello-js-port-number:
curl http://127.0.0.1:3088

echo nodejs-blackboard:
curl http://127.0.0.1:3095

echo We are Ok
exit 0
