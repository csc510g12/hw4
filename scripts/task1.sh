#!/bin/bash

PID=$(pgrep -f "infinite.sh")
echo "Killing process $PID..."
kill -9 "$PID"
