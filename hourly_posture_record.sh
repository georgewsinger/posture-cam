#!/bin/bash

function record_posture() {
  streamer -t 0:0:15 -c /dev/video0 -f rgb24 -r 20  -o "./$(date +"%I").avi"
}

sleep $(( RANDOM % (60*60) ))
record_posture # we don't start recording until a random point in the 60 minute interval is pinpointed
