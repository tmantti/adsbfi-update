#!/bin/bash

if [[ "$DUMP1090" == "no" ]]; then
    RECEIVER_OPTIONS="--net-only"
fi

exec /usr/bin/readsb \
    --write-prom /run/readsb/stats.prom \
    --gain $GAIN \
    --lat $LATITUDE \
    --lon $LONGITUDE \
    $RECEIVER_OPTIONS \
    $DECODER_OPTIONS \
    $NET_OPTIONS \
    $JSON_OPTIONS \
    --write-json /run/readsb --quiet
