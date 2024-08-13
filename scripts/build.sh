#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

docker build \
  -t gol:backend \
  -f $SCRIPT_DIR/../Docker/backend/Dockerfile \
  $SCRIPT_DIR/../Docker/backend

docker build \
  -t gol:frontend \
  -f $SCRIPT_DIR/../Docker/frontend/Dockerfile \
  $SCRIPT_DIR/../Docker/frontend
