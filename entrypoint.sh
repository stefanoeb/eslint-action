#!/bin/sh

# Exit if any subcommand fails
set -e 

# Setup node modules if needed
if [ -e node_modules/.bin/eslint ]; then
    setup=""
else
    echo "## Your environment is not ready yet. Installing modules..."
    if [ -f yarn.lock ]; then
        setup="yarn --non-interactive --silent --ignore-scripts --production=false &&"
    else
        setup="NODE_ENV=development npm install &&"
    fi
fi

if [ -z "$1" ]; then
    glob="."
else 
    glob="$@"
fi

echo "## Running ESLint"
sh -c "$setup ./node_modules/.bin/eslint $glob"
