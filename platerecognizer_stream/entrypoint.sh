#!/bin/bash
CONFIG_PATH=/data/options.json

# Load options from the JSON file
TOKEN=$(jq --raw-output '.token' $CONFIG_PATH)
LICENCE_KEY=$(jq --raw-output '.licence_key' $CONFIG_PATH)

# Export the environment variable
export TOKEN=$TOKEN
export LICENCE_KEY=$LICENCE_KEY

# Now run your application, passing the environment variable
exec ./start.sh "$@"