#!/bin/bash
set -e -a

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

source "$SCRIPT_DIR/../.env"

docker compose \
  -f "$SCRIPT_DIR/../docker-compose.yml" \
  down \
  $@
