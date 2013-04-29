#!/bin/bash

git checkout -f
git clean    -df
./gradlew -S --refresh-dependencies $1 clean cleanModules stop -DcleanNode
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]
