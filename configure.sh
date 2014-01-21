#!/bin/bash

WORKER_SECRET_KEY="${WORKER_SECRET_KEY:-$(< /dev/urandom tr -dc A-Za-z0-9 | head -c 32)}"

sed -i "s= secret_key: REPLACEME= secret_key: ${WORKER_SECRET_KEY}=" config.yml
