#!/bin/bash

docker start "$(cat kitclient-dev.pid)" && \
echo "" && \
echo "  Open a browser to http://localhost:6091" && \
echo "  Or open a VNC client to localhost:5091."
