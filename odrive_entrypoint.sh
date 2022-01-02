#!/bin/sh
nohup "/.odrive-agent/bin/odriveagent">/dev/null &

exec "$@"