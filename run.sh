#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

export $(grep -v '^#' .env | xargs -d '\n')

cd /app/$APP_NAME

mix deps.get
mix ecto.create
mix ecto.migrate
mix phx.server