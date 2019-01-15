#!/bin/sh
set -e

sh -c "pwd"
sh -c "ls -la" 
sh -c "./node_modules/.bin/eslint . "
