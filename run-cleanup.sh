#!/bin/bash

git checkout -f
git clean    -df
./gradlew    clean cleanModules
