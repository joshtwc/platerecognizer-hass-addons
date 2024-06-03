#!/usr/bin/env bashio

CONFIG_PATH=/data/options.json

TOKEN=$(python3 -c "import json; print(json.load(open('$CONFIG_PATH'))['TOKEN'])")
LICENSE_KEY=$(python3 -c "import json; print(json.load(open('$CONFIG_PATH'))['LICENSE_KEY'])")

# Export the environment variable
export TOKEN=$TOKEN
export LICENSE_KEY=$LICENSE_KEY

ln -s /config /user-data

# Now run your application, passing the environment variable
exec ./start.sh "$@"