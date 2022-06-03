#!/bin/bash

rm -f super-linter.log
docker run \
    -e RUN_LOCAL=true \
    -e USE_FIND_ALGORITHM=true \
    -e FILTER_REGEX_EXCLUDE='\.devcontainer/library-scripts/.*' \
    -v "$PWD:/tmp/lint" \
    github/super-linter
