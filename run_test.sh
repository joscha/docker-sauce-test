#!/usr/bin/env bash

set -eu -o pipefail

echo "Waiting for sauce connect"
while [ ! -f /ready/sc ]
do
  sleep 0.5
done
echo "Sauce connect is up; running tests"

npm install
npm test
