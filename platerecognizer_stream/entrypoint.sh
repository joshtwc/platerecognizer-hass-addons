#!/usr/bin/env bashio

# Load options from the JSON file
TOKEN=$(bashio::config 'TOKEN')
LICENSE_KEY=$(bashio::config 'LICENSE_KEY')

# Export the environment variable
export TOKEN=$TOKEN
export LICENSE_KEY=LICENSE_KEY

cat /data/options.json

# Now run your application, passing the environment variable
exec ./start.sh "$@"