#!/bin/bash

VIDEO_DEVICE=${VIDEO_DEVICE:-/dev/video0}
PORT=${PORT:-8080}
RESOLUTION=${VIDEO_RESOLUTION:-640x480}

echo "$VIDEO_DEVICE"
echo "$PORT"
echo "$VIDEO_RESOLUTION"
if [[ -e "$VIDEO_DEVICE" ]]; then
  echo "device exists"

  # /usr/local/bin/mjpg_streamer -i "input_uvc.so -r $VIDEO_RESOLUTION -d $VIDEO_DEVICE -f 30" -o "output_http.so -p $PORT -w /usr/local/share/mjpg-streamer/www"
else
  echo "Not starting mjpg-streamer because no camera is detected"
  # sleep infinity
fi