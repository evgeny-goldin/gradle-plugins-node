#!/bin/bash

git checkout -f
git clean    -df
./gradlew    clean cleanModules
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]