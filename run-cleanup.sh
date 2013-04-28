#!/bin/bash

git checkout -f
git clean    -df
./gradlew -i clean cleanModules stopall -DcleanNode
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]
