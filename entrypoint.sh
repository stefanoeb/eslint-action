#!/bin/sh
set -e

yarn --production=false && ./node_modules/.bin/eslint .
