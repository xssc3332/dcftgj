#!/bin/sh
if [ ! -f UUID ]; then
  UUID="05dd09eb-26e9-45b4-9b85-d5aea33a15d1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

