#!/bin/sh
set -e

if [ "$1" = 'redis-server' ]; then
    chown -R redis .
    envsubst < /etc/redis.conf | exec gosu redis "$@"
fi

exec $@
