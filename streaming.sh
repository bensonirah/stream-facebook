#!/bin/bash
set -e
video="$1"
stream_key="$2"
ffmpeg -re -i $video -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 128k -f flv rtmps://live-api-s.facebook.com:443/rtmp/$stream_key

