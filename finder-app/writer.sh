#!/bin/bash

# Check if both arguments were provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 writefile writestr"
  exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write to file and check for errors
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
  echo "Error: could not write to file $writefile"
  exit 1
fi

echo "File $writefile written successfully with content: $writestr"
