#!/bin/bash
# Script 4: Log File Analyzer
# Author: Aryaman | Course: Open Source Software

# --- Check for input file argument ---
if [ $# -eq 0 ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

LOGFILE=$1
KEYWORD="ERROR"   # You can change this to WARNING or any keyword

# --- Counters ---
TOTAL_LINES=0
MATCH_LINES=0

# --- Read file line by line ---
while read -r LINE; do
    TOTAL_LINES=$((TOTAL_LINES + 1))
    if echo "$LINE" | grep -q "$KEYWORD"; then
        MATCH_LINES=$((MATCH_LINES + 1))
    fi
done < "$LOGFILE"

# --- Summary ---
echo "Log File Analyzer Report"
echo "--------------------------------"
echo "File analyzed : $LOGFILE"
echo "Keyword       : $KEYWORD"
echo "Total lines   : $TOTAL_LINES"
echo "Matches found : $MATCH_LINES"
echo "--------------------------------"