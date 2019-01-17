#!/bin/sh


if [ -z "$@" ]; then
    glob="."
else 
    glob="$@"
fi

sh -c "yarn --production=false && ./node_modules/.bin/eslint $glob"
