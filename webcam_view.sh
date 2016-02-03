#!/bin/bash

# Useful to calibrate video footage.
# This command launches a window showing what the webcam can see.
function live_stream() {
  mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0
}

live_stream
