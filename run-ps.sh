#!/bin/bash

echo Listing remaining processes
echo -----------------------------------

ps -Af | grep coffee | grep -v grep
ps -Af | grep node   | grep -v grep
ps -Af | grep mongo  | grep -v grep
ps -Af | grep redis  | grep -v grep

echo -----------------------------------
exit 0
