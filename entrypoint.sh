#!/bin/sh
set -e

sh -c "yarn --production=false && ./node_modules/.bin/eslint ."
