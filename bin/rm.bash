#!/bin/bash

if [ -f kitclient-dev.pid ] ; then
    docker rm "$(cat kitclient-dev.pid)" && \
    rm kitclient-dev.pid
fi
