#!/bin/bash

docker create \
        -p 6901:6901 \
        -p 5901:5901 \
    kitclient:dev \
        > kitclient-dev.pid
