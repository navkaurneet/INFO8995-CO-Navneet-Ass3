#!/bin/bash
# wait-for-it.sh


TIMEOUT=30
HOST=$1
PORT=$2
CMD="${@:3}"

if [[ -z "$HOST" || -z "$PORT" ]]; then
  echo "Usage: $0 <host>:<port> -- <command>"
  exit 1
fi

# Wait for the port to be open
echo "Waiting for $HOST:$PORT to be available..."
for i in $(seq 1 $TIMEOUT); do
  nc -z $HOST $PORT && break
  echo "Waiting ($i/$TIMEOUT)..."
  sleep 1
done


if ! nc -z $HOST $PORT; then
  echo "Timeout: $HOST:$PORT is not available."
  exit 1
fi

echo "$HOST:$PORT is available. Starting command..."
exec $CMD
