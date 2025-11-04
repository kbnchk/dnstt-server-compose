#!/bin/sh
set -e

# Create keys directory if it doesn't exist
mkdir -p /keys

# Generate keys if they don't exist
if [ ! -f "/keys/server.key" ] || [ ! -f "/keys/server.pub" ]; then
    echo "Generating server keys..."
    /app/dnstt-server -gen-key -privkey-file /keys/server.key -pubkey-file /keys/server.pub
    echo "Keys generated successfully"
fi

# Execute dnstt-server with all passed arguments
exec /app/dnstt-server "$@"
