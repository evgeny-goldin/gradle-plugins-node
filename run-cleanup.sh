#!/bin/bash

git checkout -f
git clean    -df
./gradlew -i clean cleanModules setup -DcleanNode
echo Current directory space = [`du -hs . | awk '{ print $1 }'`]
