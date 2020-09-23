#!/bin/bash
ffmpeg \
  -f pulse -server tcp:audio:4317 -i spybug.monitor \
  -f mp3 icecast://source:hackme@icecast:8000/pulse