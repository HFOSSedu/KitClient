#!/bin/bash

# Fail on first error.
set -e

# Detect comman failures in a pipe.
set -o pipefail

# Print trace of commands so we know which failed.
set -x

shellcheck bin/*.bash
bin/hadolint.bash src/Dockerfile
node_modules/.bin/markdownlint-cli2 "**/*.md" "#node_modules"
find . -name node_modules -prune -or -name \*.md -print0 | xargs -0 -n1 markdown-link-check
