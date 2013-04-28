#!/bin/bash

git checkout -f
git clean    -df
./gradlew -i clean cleanModules stop -DcleanNode
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]
