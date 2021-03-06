#!/bin/bash

set -e
set -x

git checkout -f
git clean    -df

./gradlew -S --refresh-dependencies $1 clean cleanModules stop -DcleanNode -PpluginsVersion=$2

echo Current directory space = [`du -hs . | awk '{ print $1 }'`]
