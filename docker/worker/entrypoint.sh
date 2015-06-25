#!/bin/bash

until nc -z postgres 5432; do
    echo "$(date) - waiting for postgres..."
    sleep 1
done
sleep 10
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf