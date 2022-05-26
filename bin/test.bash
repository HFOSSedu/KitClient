#!/bin/bash

shellcheck bin/*.bash
bin/hadolint.bash src/Dockerfile
node_modules/.bin/markdownlint-cli2 "**/*.md" "#node_modules"
find . -name node_modules -prune -or -name \*.md -print0 | xargs -0 -n1 markdown-link-check
