#!/bin/bash

if [ -f kitclient-dev.pid ] ; then
    docker stop "$(cat kitclient-dev.pid)"
fi
