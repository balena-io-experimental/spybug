#!/bin/bash

# Wait for audioblock to start
while [[ $(nc -z audio 4317) ]]; do sleep 5; echo "Waiting for audioblock to start..."; done

/usr/bin/darkice -c /usr/src/darkice.cfg