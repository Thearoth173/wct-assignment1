#!/bin/bash
URL="$1"
USERNAME=$(basename "$URL")
OUTPUT_FILE="${USERNAME}.txt"
curl -s "https://api.github.com/users/${USERNAME}/repos" \
| grep '"name":' \
| cut -d '"' -f 4 \
> "$OUTPUT_FILE"
echo "Saved repository list to $OUTPUT_FILE"
