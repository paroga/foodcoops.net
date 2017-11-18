#!/bin/sh
set -e

cd `dirname $0`
git fetch
git reset --hard origin/master
git clean -df
docker-compose build --pull
docker-compose pull
docker-compose up -d
