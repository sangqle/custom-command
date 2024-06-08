#!/bin/bash

# Check if the disk name is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <disk_name>"
  exit 1
fi

# Define the path to the external drive
DRIVE_PATH="/Volumes/$1"

# Check if the specified volume exists
if [ ! -d "$DRIVE_PATH" ]; then
  echo "The specified volume '$DRIVE_PATH' does not exist."
  exit 1
fi

# Find all processes accessing the external drive
PROCESS_IDS=$(lsof | grep "$DRIVE_PATH" | awk '{print $2}' | sort -u)

# Kill each process
for PID in $PROCESS_IDS; do
  echo "Killing process $PID accessing $DRIVE_PATH"
  kill -9 $PID
done

echo "All processes accessing $DRIVE_PATH have been killed."

