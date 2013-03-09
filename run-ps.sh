#!/bin/bash

echo Checking for remaining processes

ps -Af | grep coffee | grep -v grep
ps -Af | grep node   | grep -v grep
ps -Af | grep mongo  | grep -v grep
ps -Af | grep redis  | grep -v grep

exit 0
