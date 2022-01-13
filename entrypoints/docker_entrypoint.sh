#!/bin/sh

set -e

if [ -f /food-recipes/tmp/pids/server.pid ]; then
  rm /food-recipes/tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0
