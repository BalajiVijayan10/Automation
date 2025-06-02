#!/bin/bash

OUT_DIR="$HOME/large_reports
mkdir -p $OUT_DIR

OUT_FILE="$OUT_DIR/large_file.txt

echo "This show file which is more than 100MB"

find /var/logs -type f -size +100M -exec ls -lh {} \; > "$OUT_FILE"

echo "This shows the zipping the file "

find /var/logs -type f -size +100M -exec gzip {} \; > "$OUT_FILE"

echo "Log files has been zipped"