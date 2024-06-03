#!/bin/bash

# Load options from the JSON file
TOKEN=$(bashio::config 'TOKEN')
LICENCE_KEY=$(bashio::config 'LICENCE_KEY')

# Export the environment variable
export TOKEN=$TOKEN
export LICENCE_KEY=$LICENCE_KEY

echo "$TOKEN"

# Now run your application, passing the environment variable
exec ./start.sh "$@"