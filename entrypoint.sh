#!/bin/sh


if [ -z "$@" ]; then
    glob="."
else 
    glob="$@"
fi

sh -c "yarn --non-interactive --silent --ignore-scripts --production=false && ./node_modules/.bin/eslint $glob"
