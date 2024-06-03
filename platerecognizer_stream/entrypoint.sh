#!/bin/bash
CONFIG_PATH=/data/options.json

# Load options from the JSON file
TOKEN=$(python3 -c "import json; print(json.load(open('$CONFIG_PATH'))['token'])")
LICENCE_KEY=$(python3 -c "import json; print(json.load(open('$CONFIG_PATH'))['licence_key'])")

# Export the environment variable
export TOKEN=$TOKEN
export LICENCE_KEY=$LICENCE_KEY

# Now run your application, passing the environment variable
exec start.sh "$@"