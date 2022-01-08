#!/bin/sh

if [ $# -eq 0 ]; then
  nohup "/.odrive-agent/bin/odriveagent">/dev/null
else
  nohup "/.odrive-agent/bin/odriveagent">/dev/null &
  exec "$@"
fi