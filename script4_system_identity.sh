#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh <logfile> [keyword]
# Default keyword is "error" if not provided

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# Check if log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty and retry
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: $LOGFILE is empty. Retrying in 5 seconds..."
    sleep 5
    if [ ! -s "$LOGFILE" ]; then
        echo "File is still empty. Exiting."
        exit 1
    fi
fi

# Read the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
