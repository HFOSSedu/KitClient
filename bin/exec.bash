#!/bin/bash

docker exec -it "$(cat kitclient-dev.pid)" "$@"
