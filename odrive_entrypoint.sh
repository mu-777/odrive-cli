#!/bin/sh
nohup "$HOME/.odrive-agent/bin/odriveagent">/dev/null &

exec "$@"