#!/bin/bash

git checkout -f
git clean    -df
./gradlew    clean cleanModules -DcleanNode
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]